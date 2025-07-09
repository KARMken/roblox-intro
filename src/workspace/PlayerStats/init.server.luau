-- Creating instances
--[[
local newPart = Instance.new("Part")

newPart.Name = "NewPart"
newPart.Parent = game.Workspace
]]

function modifyLeaderboard(player)
	local leaderstats = Instance.new("Folder")
	local coins = Instance.new("IntValue")

	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	coins.Name = "Shikils"
	coins.Value = 0
	coins.Parent = leaderstats

	while true do
		task.wait(1)
		coins.Value = coins.Value + 1
	end
end
game.Players.PlayerAdded:Connect(modifyLeaderboard)

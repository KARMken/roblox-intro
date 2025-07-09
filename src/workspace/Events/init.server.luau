-- Variables

local partIsTouched = false
local diePart = game.Workspace:FindFirstChild("diePart")

-- Functions

-- Player Added Notifier
local function playerAdded(player)
	print("A new player has joined. Username: " .. player.Name)
end

-- Kill function
local function kill(otherPart)
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")

	if humanoid then
		humanoid.Health = 0
	end
end

-- Touching other parts function
local function onTouched(hit)
	if partIsTouched == false then
		partIsTouched = true
		print(hit.Name .. "is touching the red part.")
		task.wait(2)
		partIsTouched = false
	end
end

-- Event Calls (Roblox library)
game.Players.PlayerAdded:Connect(playerAdded)

diePart.Touched:Connect(kill)

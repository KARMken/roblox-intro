-- Events

-- Player Added Notifier
local function playerAdded(player)
	print("A new player has joined. Username: " .. player.Name)
end

game.Players.PlayerAdded:Connect(playerAdded)

local diePart = game.Workspace.diePart

local partIsTouched = false

-- Kill function
local function kill(hit)
	hit:Destroy()
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
diePart.Touched:Connect(onTouched)

local baseplate = game.Workspace.Baseplate

local materials = {
	Enum.Material.Plastic,
	Enum.Material.Grass,
	Enum.Material.Wood,
	Enum.Material.Metal,
	Enum.Material.Neon,
	Enum.Material.Glass,
	Enum.Material.Slate,
	Enum.Material.Concrete,
	Enum.Material.Fabric,
	Enum.Material.SmoothPlastic,
}

while true do
	local red = math.random(0, 255)
	local green = math.random(0, 255)
	local blue = math.random(0, 255)
	local material = materials[math.random(1, #materials)]

	baseplate.Color = Color3.fromRGB(red, green, blue)
	baseplate.Material = material
	task.wait(2)
end

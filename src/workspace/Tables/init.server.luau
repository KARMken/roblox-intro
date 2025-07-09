-- Simple for loop of a table (also called as an array)
--[[
local animals = {
	100,
	"Capybara",
	false,
	10,
}

for index = 1, #animals do
	print(animals[index])
end
]]

-- local pets = { 10, 30, 40, 50, 60 }
--[[
-- Add to array (PUSH) - value
table.insert(pets, 20)
for i = 1, #pets do
	print(pets[i])
end

--Remove from an array (POP) - index
table.remove(pets, 1)
for i = 1, #pets do
	print(pets[i])
end

-- Look inside an array - value
if table.find(pets, 20) then
	print("20 has been found")
end
]]

-- Dictionary

--[[ 
--First way of writing a dictionary
local menu = {
	["Burger"] = 10,
	["CheeseBurger"] = 15,
	["LeafyBurger"] = 12,
	["Cola"] = 5,
	["Pancakes"] = 8,
	["Milk"] = 10,
}

print("$" .. menu["CheeseBurger"])

menu["CheeseBurger"] = 5
]]

--[[
--Second way of Writing a Dictionary
local menu = {
	Burger = 10,
	Cola = 5,
}

menu.Burger = 2
print("$" .. menu.Burger)
]]

-- Pairs loop for (let key in dict - JS) used for array not on dictionary because it dictionary is NOT SEQUENTIAL (unordered)
--[[
local menu = {
	["Burger"] = 10,
	["CheeseBurger"] = 15,
	["LeafyBurger"] = 12,
	["Cola"] = 5,
	["Pancakes"] = 8,
	["Milk"] = 10,
}

-- Pair loop
for menuItem, price in pairs(menu) do
	print(menuItem .. ": " .. price)
end
]]

-- Ipair loop for dictionary
--[[
local damage = { 10, 20, 30, 40, 50, 60, 70, 80 }

for _, number in ipairs(damage) do
	print(number)
end
]]

local model = game.Workspace.Model

for _, part in pairs(model:GetChildren()) do
	print(part.Name)
end

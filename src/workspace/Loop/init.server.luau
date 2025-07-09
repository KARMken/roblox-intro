-- Basic Syntax of Loop
-- For Loop Example
for counter = 1, 5, 1 do
	print("For Counter is: " .. counter)
end

-- While Loop Example
local myWhileCounter = 1
while myWhileCounter < 5 do
	print("While Counter is currently:" .. myWhileCounter)
	myWhileCounter += 1
end

-- Nested Loop
for counter = 1, 3, 1 do
	print("Outer Loop Counter is: " .. counter)
	for innerCounter = 1, 3, 1 do
		print("Inner Loop Counter is: " .. innerCounter)
	end
end

-- Loop for properties
local baseplate = game.Workspace.Baseplate

for counter = 1, 5, 1 do
	print("Color counter currently at: " .. counter)
	baseplate.BrickColor = BrickColor.new("Bright red")
	-- Wait Statement
	task.wait(1)
	baseplate.BrickColor = BrickColor.new("Toothpaste")
	task.wait(1)
	baseplate.BrickColor = BrickColor.new("Bright blue")
	task.wait(1)
end

-- Breaks
for i = 1, 10000 do
	print("Break for loop is printed")

	if i == 2 then
		break
	end
end

-- Continue
for i = 1, 10 do
	if i == 5 then
		print("Continue to print this continue for example")
		continue
	end

	print("Continue example is printing")
end

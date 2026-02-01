distance = 10
--BaseX = 0
--BaseY = 0
--TransaltionX = 0
--TransaltionY = 0
x = 0
y = 0
orientation = 1

function cube()
    for i = 1, 9 do
        for c = 1, 4 do
            for x = 1, distance do
                turtle.dig()
                turtle.forward()
                if orientation == 1 then
                    x = x + 1
                elseif orientation == 2 then
                    y = y + 1
                elseif orientation == 3 then
                    x = x - 1
                elseif orientation == 4 then
                    y = y - 1
                end
                print("X: " .. x .. " Y: " .. y)
            end
            turtle.turnRight()
            print("Orientation start " .. orientation)
            orientation = orientation + 1
            print("Orientation end " .. orientation)
            if orientation > 4 then
                orientation = 1
            end
        end
        turtle.forward()
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
        turtle.dig()
        distance = distance - 2
        print(distance)
    end
end

function reset()
    turtle.turnLeft()
    turtle.turnLeft()
    for returnX = 1, 5 do
        turtle.forward()
    end
    turtle.turnRight()
    for returnY = 1, 5 do
            turtle.forward()
    end
    turtle.turnRight()
    turtle.digDown()
    turtle.down()
    distance = 10
    x = 0
    y = 0
end

for x = 1, 5 do
    cube()
    print("Finished mining cube")
    reset()
end
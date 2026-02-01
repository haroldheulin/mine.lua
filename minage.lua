local distance = 10
--local BaseX = 0
--local BaseY = 0
--local TransaltionX = 0
--local TransaltionY = 0
local x = 0
local y = 0
local orientation = 1

function cube(distance)
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
        turtle.forward()
        turtle.turnLeft()
        distance = distance - 2
    end
end

for x = 1, 5 do
    cube(distance)
    print("Finished mining cube")
    print("Final Position X: " .. x .. " Y: " .. y)

    --local TranslationX = x - BaseX
    --local TranslationY = y - BaseY

    while orientation ~= 3 do -- Sorienter vers l'origine
        turtle.turnRight()
        orientation = orientation + 1
    end
    for Transx = 1, x do -- retourner sur le X d'origine
        turtle.forward()
    end
    turtle.turnRight()
    for Transy = 1, y do -- retourner sur le Y d'origine
        turtle.forward()
    end
    while orientation ~= 1 do -- S'orienter pour recomencer
        turtle.turnRight()
        orientation = orientation + 1
    end
    turtle.digDown()
    turtle.down()
    local distance = 10
    local x = 0
    local y = 0
end
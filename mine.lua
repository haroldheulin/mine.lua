distance = 10

function avancer()
    for x = 1, distance do
        turtle.forward()
        turtle.dig()
    end
end

while true do
    for c = 1, 3 do
        for d = 1, 10 do
            avancer()
        end
        turtle.turnRight()
    end
    distance = distance - 1
    if distance == 0 then
        os.exit()
    end
end
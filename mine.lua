distance = 10

function avancer()
    for x = 1, distance do
        turtle.forward()
        turtle.dig()
    end
end

while distance > 1 do
    for c = 1, 3 do
        avancer()
        turtle.turnRight()
    end
    distance = distance - 1
end
distance = 10
x = 0
y = 0
z = 0

function avancer()
    for d = 1, distance do
        turtle.forward()
        turtle.dig()
    end
end

function forward()
    while distance > 1 do
        for c = 1, 3 do
           avancer()
           turtle.turnRight()
        end
        distance = distance - 1
    end
end

while true do
    forward()
    for x = 1, 6 do
        turtle.forward()
    end
    tutle.turnRight()
    for x = 1, 5 do
        turtle.forward()
    end
    turtle.turnRight()
    turtle.digDown()
    trurtle.down()
end
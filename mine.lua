local distance = 10

function avancer(n)
    for i = 1, n do
        turtle.dig()
        turtle.forward()
    end
end

function creuserCarre(taille)
    local d = taille
    while d > 0 do
        for side = 1, 4 do
            avancer(d - 1)
            turtle.turnRight()
        end
        d = d - 2
        if d > 0 then
            turtle.forward()
            turtle.turnRight()
        end
    end
end

function retourCoinDepart(taille)
    turtle.turnRight()
    turtle.turnRight()
    for i = 1, taille - 1 do
        turtle.forward()
    end
    turtle.turnRight()
    for i = 1, taille - 1 do
        turtle.forward()
    end
    turtle.turnRight()
end

while true do
    creuserCarre(distance)
    retourCoinDepart(distance)
    turtle.digDown()
    turtle.down()
end

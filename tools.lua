function love.graphics.square(drawmode, x, y, s)
    love.graphics.rectangle(drawmode, x, y , s, s)
end

function cartesian_coordinates_transform(bool)
    if bool == true then
        love.graphics.scale(1, -1) 
    end
end

function dist(x1, y1, x2, y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end

function snap(value, grid)
    grid = grid or 1
    return math.floor((value + (grid / 2)) / 10) * 10
end
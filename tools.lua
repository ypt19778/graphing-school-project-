function love.graphics.square(drawmode, x, y, s)
    love.graphics.rectangle(drawmode, x, y , s, s)
end

function cartesian_coordinates_transform(bool)
    if bool == true then
        love.graphics.scale(1, -1) 
    end
end
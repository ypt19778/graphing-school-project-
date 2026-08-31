require "tools"
require "set"
require "grid"

function love.load()
    grid = Grid:new(game.coords.offset.x, game.coords.offset.y, game.coords.scale, 35, 35)
end 

function love.update(dt)
    grid:update(dt)
end

function love.draw()
    cartesian_coordinates_transform()
    love.graphics.setBlendMode("replace")
    grid:draw()
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end
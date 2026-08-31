require "tools"
require "set"
require "grid"

function love.load()
    grid = Grid:new(2, 4)
end 

function love.update(dt)
    --grid:update(dt)
end

function love.draw()
    cartesian_coordinates_transform()
    love.graphics.translate(game.window.width / 2, game.window.height / 2)
    love.graphics.setBlendMode("replace")
    grid:draw()
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end
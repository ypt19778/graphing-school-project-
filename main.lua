require "tools"
require "set"
require "grid"
require "ruler"

function love.load()
    grid = Grid:new(50, 50)
    ruler = Ruler:new()
end

function love.update(dt)
    ruler:update(dt)
end

function love.draw()
    cartesian_coordinates_transform()
    love.graphics.translate(game.window.width / 2, game.window.height / 2)
    love.graphics.setBlendMode("replace")
    grid:draw()
    love.graphics.circle("fill", 0, 0, 5)
    ruler:draw()
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end
Grid = {__index = self}

function Grid:new(rows, cols)
    grid = setmetatable(self, Grid)
    grid.x = cols -1
    grid.y = rows -1
    grid.rows = rows
    grid.cols = cols
    return grid
end

function Grid:draw()
    for x = 0, self.x do
        for y = 0, self.y do
            local step = game.coords.scale
            local ofsx, ofsy = self.rows / 2 * step, self.cols / 2 * step
            local cx, cy = (x*step) - ofsx, (y*step) - ofsy
            love.graphics.square("line", cx, cy, step)
        end
    end
end
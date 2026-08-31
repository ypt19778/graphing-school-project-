Grid = { __index = self }

function Grid:new(x, y, rows, cols)
    local grid = setmetatable(self, Grid)
    grid.cells = {}
    grid.x, grid.y = x, y
    grid.rows, grid.cols = rows, cols

    for y = 1, grid.rows do
        grid.cells[y] = {}
        for x = 1, grid.cols do
            local cellX = grid.x + (x * game.coords.scale)
            local cellY = grid.y + (y * game.coords.scale)

            grid.cells[y][x] = Grid.cell:new(grid.cells, cellX, cellY)
        end
    end
    return grid
end

Grid.cell = { __index = self }

function Grid.cell:new(grid, x, y)
    local cell = setmetatable(self, Grid.cell)
    cell.x, cell.y = x, y
    table.insert(grid, cell)
    print("new cell at "..cell.x..", "..cell.y)
    return cell
end

function Grid:update(dt)
end

function Grid:draw()
    love.graphics.setColor(1, 1, 1, 0.5)
    love.graphics.setLineWidth(1)
    -- work on drawing the grid tomorrow
    for y = 0, self.grid do
        for x = 0, sel do
            love.graphics.square("line", v.x, v.y, game.coords.scale)
        end
    end
end
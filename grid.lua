--[[
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
    for y = 0, #self.grid[y] do
        for x = 0, #self.grid[y][x] do
            love.graphics.square("line", v.x, v.y, game.coords.scale)
        end
    end
end
]]

Grid = {__index = self}

function Grid:new(rows, cols)
    grid = setmetatable(self, Grid)
    grid.x = cols -1
    grid.y = rows -1
    grid.rows = rows
    grid.columns = cols
    return grid
end

function Grid:draw()
    for x = 0, self.x do
        for y = 0, self.y do
            local step = game.coords.scale * 10
            local width, height = game.window.width, game.window.height
            local cx, cy = (x*step), (y*step)
            print("x: "..cx..", y: "..cy)
            --local coord_far_x, coord_far_y = cx - width / 2, cy - height / 2
            love.graphics.square("line", cx, cy, step)
        end
    end
end
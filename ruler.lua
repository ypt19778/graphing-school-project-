Ruler = {__index = self}

function Ruler:new()
    local ruler = setmetatable(self, Ruler)
    ruler.x1, ruler.y1 = 0, 0
    ruler.x2, ruler.y2 = 100, 100
    ruler.active = false
    return ruler
end

function Ruler:registerStart()
    if not self.active then self.active = true end
    self.x1, self.y1 = love.mouse.getPosition()
end

function Ruler:registerEnd()
    self.x2, self.y2 = love.mouse.getPosition()
end

function Ruler:update(dt)
    if love.keyboard.isDown("m") then
        if not self.active then
            Ruler:registerStart()
        end
        Ruler:registerEnd()
    else
        self.active = false
    end
end

function Ruler:draw()
    love.graphics.setColor(0, 1, 0)
    if self.active then
        love.graphics.line(self.x1, self.y1, self.x2, self.y2)
    end
    love.graphics.setColor(1, 1, 1)
end
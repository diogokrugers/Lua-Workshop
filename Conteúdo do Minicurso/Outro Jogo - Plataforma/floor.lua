Floor = {}

function Floor:load()
    self.x = 0
    self.width = love.graphics.getWidth()
    self.height = love.graphics.getHeight() / 4
    self.y = love.graphics.getHeight() - self.height
end

function Floor:update(dt)
end

function Floor:draw()
    love.graphics.setColor(99/255, 44/255, 4/255, 1)
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

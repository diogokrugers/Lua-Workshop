Player = {}

function Player:load()
    self.x = love.graphics.getWidth() / 2
    self.y = love.graphics.getHeight() / 2
    self.width = 25
    self.height = 50
    self.speed = 300
end

function Player:update(dt)
    self:move(dt)
    self:checkColisao()
end

function Player:move(dt)
    if love.keyboard.isDown("w") then
        self.y = self.y - self.speed * dt
    elseif love.keyboard.isDown("s") then
        self.y = self.y + self.speed * dt
    elseif love.keyboard.isDown("a") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("d") then
        self.x = self.x + self.speed * dt
    end
end

function Player:checkColisao()
    if self.y < 0 then
        self.y = 0
    elseif self.y + self.height > love.graphics.getHeight() then
        self.y = love.graphics.getHeight() - self.height
    end

    if self.x < 0 then
        self.x = 0
    elseif self.x + self.width > love.graphics.getWidth() then
        self.x = love.graphics.getWidth() - self.width
    end
end

function Player:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end


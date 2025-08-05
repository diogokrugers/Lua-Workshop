require("floor")
require("goomba")

GRAVIDADE_CONST = 1500
FORCA_PULO = -500

Player = {}

function Player:load()
    self.x = (love.graphics.getWidth() / 2) + 400
    self.y = love.graphics.getHeight() / 2
    self.width = 40
    self.height = 80
    self.speed = 300
    self.yVel = 0
    self.noChao = false
    self.morto = false
end

function Player:update(dt)
    self:controle(dt)
    self:efeitoDaGravidade(dt)
    self:checkColisoes()
end

function Player:controle(dt)
    if love.keyboard.isDown("a") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("d") then
        self.x = self.x + self.speed * dt
    end

    if self.noChao and (love.keyboard.isDown("w") or love.keyboard.isDown("space")) then
        self.yVel = FORCA_PULO
        self.noChao = false
    end
end

function Player:efeitoDaGravidade(dt)
    self.yVel = self.yVel + GRAVIDADE_CONST * dt
    self.y = self.y + self.yVel * dt

    if self.y + self.height >= Floor.y then
        self.y = Floor.y - self.height
        self.yVel = 0
        self.noChao = true
    end
end

function Player:checkColisoes()
    self.x = math.max(0, math.min(self.x, love.graphics.getWidth() - self.width))
    self.y = math.max(0, math.min(self.y, love.graphics.getHeight() - self.height))

    for i = #GoombaManager.goombas, 1, -1 do
        local g = GoombaManager.goombas[i]
        if self:colideCom(g) then
            if self.y + self.height - g.y < 10 and self.yVel > 0 then
                table.remove(GoombaManager.goombas, i)
                self.yVel = FORCA_PULO / 1.5
            else
                self.morto = true
            end
        end
    end
end

function Player:colideCom(inimigo)
    return self.x < inimigo.x + inimigo.width and
           self.x + self.width > inimigo.x and
           self.y < inimigo.y + inimigo.height and
           self.y + self.height > inimigo.y
end

function Player:draw()
    love.graphics.setColor(1, 0, 0)
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

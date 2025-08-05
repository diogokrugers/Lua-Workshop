require("player")
require("floor")
require("goomba")

function love.load()
    Player:load()
    Floor:load()
    GoombaManager:load()
    gameOver = false
    venceu = false
end

function love.update(dt)
    if gameOver or venceu then return end

    Player:update(dt)
    GoombaManager:update(dt)

    if Player.morto then
        gameOver = true
    elseif #GoombaManager.goombas == 0 then
        venceu = true
    end
end

function love.draw()
    love.graphics.setBackgroundColor(64/255, 50/255, 40/255, 1)
    Player:draw()
    Floor:draw()
    GoombaManager:draw()

    if gameOver then
        love.graphics.setColor(1, 0, 0)
        love.graphics.print("Você morreu!", 300, 100, 0, 2)
    elseif venceu then
        love.graphics.setColor(0, 1, 0)
        love.graphics.print("Você venceu!", 300, 100, 0, 2)
    end
end

print("O jogo de plataforma abriu!")
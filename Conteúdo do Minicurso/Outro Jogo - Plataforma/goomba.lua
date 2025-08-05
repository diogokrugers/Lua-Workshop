require("floor")

GoombaManager = {}

function GoombaManager:load()
    self.goombas = {}

    for i = 1, 5 do
        local width = 40
        local height = 40
        table.insert(self.goombas, {
            width = width,
            height = height,
            x = (i * 200) - 200,    -- espalha eles
            y = Floor.y - height,
            speed = 100,
            dir = 1
        })
    end
end

function GoombaManager:update(dt)
    for _, g in ipairs(self.goombas) do
        g.x = g.x + g.speed * g.dir * dt

        if g.x <= 0 then
            g.x = 0
            g.dir = 1
        elseif g.x + g.width >= love.graphics.getWidth() then
            g.x = love.graphics.getWidth() - g.width
            g.dir = -1
        end
    end
end

function GoombaManager:draw()
    love.graphics.setColor(0.6, 0.4, 0.2)
    for _, g in ipairs(self.goombas) do
        love.graphics.rectangle("fill", g.x, g.y, g.width, g.height)
    end
end

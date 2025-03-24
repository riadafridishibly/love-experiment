function love.load()
    love.window.setMode(1600, 900, {
        resizable = true
    })
    fontSize = 12
    font = love.graphics.newFont(fontSize)
    coloredText = love.graphics.newText(font, {{1, 0, 0}, "Hello ", {0, 0, 1}, "world"})
    wheelVelocity = 1
    offsetX = 0
    offsetY = 0
end

function love.update(dt)
end

function love.draw()
    local x, y = love.mouse.getPosition()
    offsetY = coloredText:getHeight() / 2.0
    offsetX = coloredText:getWidth() / 2.0
    love.graphics.draw(coloredText, x - offsetX, y - offsetY)
    love.graphics.print(fontSize, 10, 10)
end

function love.wheelmoved(dx, dy)
    fontSize = math.max(fontSize + wheelVelocity * dy, 12)
    font = love.graphics.newFont(fontSize)
    coloredText = love.graphics.newText(font, {{1, 0, 0}, "Hello ", {0, 0, 1}, "world"})
end

game = {}

function game.init()
end

function game.update(dt)
end

function game.draw()
end

function game.keypressed(key)
  if key == "escape" then
    love.event.quit(0)
  end
end
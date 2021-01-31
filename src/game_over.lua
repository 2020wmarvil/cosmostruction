game_over = {}

function game_over.init()
end

function game_over.update(dt)
end

function game_over.draw()
end

function game_over.keypressed(key)
  if key == "escape" then
    love.event.quit(0)
  end
end

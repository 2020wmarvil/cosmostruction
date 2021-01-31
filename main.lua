io.stdout:setvbuf("no")
  
SCREEN_WIDTH = love.graphics.getWidth()
SCREEN_HEIGHT = love.graphics.getHeight()

function love.load()
  love.math.setRandomSeed(love.timer.getTime())

  Object = require("libs/classic")
  require("src/game")
  require("src/game_over")
  
  love.window.setTitle("Cosmostruction")
  --love.window.setIcon(love.image.newImageData("assets/icon.png"))

  love.graphics.setBackgroundColor(0, 0, 0)
  
  startGame()
end
  
function startGame()
  game.init()
  
  love.update = game.update
  love.draw = game.draw
  love.keypressed = game.keypressed
end

function startGameOver()
  game_over.init()
  
  love.update = game_over.update
  love.draw = game_over.draw
  love.keypressed = game_over.keypressed
end

function collision(r1, r2)
  return r1.bb.x1 < r2.bb.x2 and r1.bb.x2 > r2.bb.x1 and r1.bb.y1 < r2.bb.y2 and r1.bb.y2 > r2.bb.y1
end

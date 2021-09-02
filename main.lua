

function love.load()
  -- initialize setting and objects
  Object = require "classic"
  require "player"
  require "npc"
  player1 = Player()

  -- create list of npc
  listOfNpc = {}

end


function love.draw(dt)
  player1:draw()

  for i = 1, #listOfNpc do
    npc:draw()
  end

end

function love.keypressed(key)
  if key == "space" then
    player1.x = 20
    player1.y = 20
  end

  if key == "n" then
    npc = Npc()
    -- put npc in table
    table.insert(listOfNpc, npc)
    print("npc count: " .. #listOfNpc)
  end

end


function love.update(dt)
-- basic keyboard controls *dt to keep framerate constant

  player1.update(player1, dt)

end

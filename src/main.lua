local physics = require "physics"
local world = {}

-- adiciona objeto no mundo
-- properties é uma table
-- oq tiver faltando na table é substituído por algum valor
function addobject(properties)
  table.insert(world, {
    x = properties.x or 0,
    y = properties.y or 0,
    vx = properties.vx or 0,
    vy = properties.vy or 0,
    width  = properties.width or 0,
    height = properties.height or 0
  })
end

-- primeira função q o love chama
function love.load()
  -- não tem vx e vy na table, então vai ficar vx=0, vy=0
  addobject({
    x = 0, y = 0, width = 200, height = 200
  })
end

-- essa função é chamada todo frame
-- dt = delta tempo (entre os frames)
function love.update(dt)
  physics.update(world, dt)
end

-- essa função é pra desenhar coisas
function love.draw()
  -- loop pra todos os objetos
  for i, obj in ipairs(world) do
    -- desenha retangulo
    love.graphics.rectangle(
      "fill", obj.x, obj.y, obj.width, obj.height
    )
  end
end

-- script q vai lidar com física
local physics = {}

-- x, y   - posição
-- vx, vy - velocidade

-- essa funcao é chamada no love.update
function physics.update(world, dt)
  -- loop pra todos os objetos
  for i, obj in ipairs(world) do
    -- adiciona (velocidade * dt) a posição do objeto
    obj.x = obj.x + obj.vx * dt
    obj.y = obj.y + obj.vy * dt
  end
end

return physics

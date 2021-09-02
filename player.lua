Player = Object.extend(Object)

function Player.new(self)
   -- player character as table
    self.width = 16
    self.height = 16
    self.x = 20
    self.y = 28
    self.rx = 2
    self.ry = 2
    self.moveSpeed =80
end

function Player.update (self, dt)

  if love.keyboard.isDown("right") then
      if self.x <= love.graphics.getWidth() - self.width then
        self.x = self.x + self.moveSpeed * dt
      else
        self.x = self.x -1
      end

  elseif love.keyboard.isDown("left") then
    if self.x >= 1 then
      self.x = self.x - self.moveSpeed * dt
    else
      self.x = self.x
    end

  end

  if love.keyboard.isDown("down") then
    if self.y <= love.graphics.getHeight() - self.height then
      self.y = self.y + self.moveSpeed * dt
    else
      self.y = self.y -1
    end

  elseif love.keyboard.isDown("up") then
    if self.y >= 1 then
      self.y = self.y - self.moveSpeed * dt
    else
      self.y = self.y
    end
  end
end

function Player.draw(self)
  love.graphics.rectangle("fill", self.x, self.y, self.width, self.height, self.rx, self.ry)
end

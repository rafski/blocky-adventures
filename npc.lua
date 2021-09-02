Npc = Object.extend(Object)

function Npc.new(self)
   -- player character as table
   self.width = math.random(4, 20)
   self.height = 16
   self.x = math.random(350)
   self.y = math.random(200)
   self.rx = 2
   self.ry = 2
   self.moveSpeed =80

end

function Npc.draw (self)
  love.graphics.rectangle("line", self.x, self.y, self.width, self.height, self.rx, self.ry)
end

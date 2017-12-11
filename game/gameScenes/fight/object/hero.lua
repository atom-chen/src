--
-- Author: Your Name
-- Date: 2017-12-09 00:03:35
--
local M = class("galLayer",GameNode)

function M:ctor( params )
	self:setData(params)
end

function M:setData( params )
	self.hp = params.hp
	self.atk = params.atk
end

function M:initView( parent )
	
end

function M:hurt( damage )
	self.hp = self.hp-damage
	if self.hp == 0 then
		print("die")
	end
	self:printData()
end

function M:printData(  )
	print("hp = ",self.hp)
	print("atk = ",self.atk)
end

return M
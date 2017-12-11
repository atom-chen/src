--
-- Author: Your Name
-- Date: 2017-12-03 19:57:10
--类似率土之滨的战斗一样的回合制
local M = class("galLayer",GameNode)
local Hero = import(".object.hero")
function M:ctor(  )
	
end

function M:setData(  )
	
end

function M:initView( parent )
	self.owner = display.newNode()
	parent:addChild(self.owner)
	self:fight()
	GameMessage:addEventListener(GameMessage.time,function()
	    self.heroA:hurt(self.heroB.atk)
	    self.heroB:hurt(self.heroA.atk)
	end)
end

function M:fight(  )
	self.heroA = Hero.new{hp = 8,atk = 1}
	self.heroB = Hero.new{hp = 8,atk = 1}
end

function M:turn( turnNum )
	for i=1,turnNum do
		
	end
end

function M:createObject( params )
	return {}
end

return M
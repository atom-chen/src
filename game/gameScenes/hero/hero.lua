--
-- Author: Your Name
-- Date: 2017-12-03 19:57:10
--类似率土之滨的战斗一样的回合制
local M = class("galLayer",GameNode)
function M:ctor(  )
	M.super.ctor(self)	
end

function M:setData(  )
	self.skills = {}
end
function M:initView( parent )
	display.addSpriteFrames("fight/npc/animation_s_npc1_1_att1.plist","fight/npc/animation_s_npc1_1_att1.png")
	local sprite=display.newSprite("#img_s_npc1_1_att1_01.png")
	parent:addChild(sprite)
end

function M:updateView(  )
	
end

function M:addBehavior(  )
	
end

-- function M:move(  )
	
-- end

-- function M:attack(  )
	
-- end

return M
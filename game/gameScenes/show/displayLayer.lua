--
-- Author: Your Name
-- Date: 2017-12-03 19:57:10
--类似率土之滨的战斗一样的回合制
local M = class("galLayer",GameNode)
function M:ctor(  )
	M.super.ctor(self)	
end

function M:setData(  )
	self.hero = ref.slime.getRef{}
	dump(self.hero)
end

function M:initView( parent )
	M.super.initView(self,parent)
	--左边展示形象
	--右边分标签栏显示各种属性，已经吃了的东西
end


function M:updateView(  )
	
end

function M:updateEmoticon( id )
	
end

return M
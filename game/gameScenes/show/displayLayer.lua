--
-- Author: Your Name
-- Date: 2017-12-03 19:57:10
--类似率土之滨的战斗一样的回合制
local M = class("galLayer",GameNode)
function M:ctor(  )
	M.super.ctor(self)	
end

function M:setData(  )
	-- self.hero = ref.slime.getRef{}
	--把缓存框架移植过来
	-- self.hero = cache.getData()
end

function M:initView( parent )
	M.super.initView(self,parent)
	--左边展示形象
	--右边分标签栏显示各种属性，已经吃了的东西
	--下边显示消化中的道具
	--移动以及拾取操作可参考饥荒
end

function M:updateView(  )
	
end

function M:updateEmoticon( id )
	
end
--道具列表
function M:initItemList(  )
	
end

return M
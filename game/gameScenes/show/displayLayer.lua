--
-- Author: Your Name
-- Date: 2017-12-03 19:57:10
--类似率土之滨的战斗一样的回合制
local M = class("galLayer",GameNode)
local hero = require("game.gameScenes.hero.hero")
function M:ctor(  )
	M.super.ctor(self)	
end

function M:setData(  )
	self.hero = ref.slime.getRef{}
	--把缓存框架移植过来
	-- self.hero = cache.getData()
end

function M:initView( parent )
	M.super.initView(self,parent)
	local cache = GameCacheMgr.getGameCacheByName("CacheItem")
	cache:newItem()
	self.owner = CCBReader.load("ccbi_hero_info_panel.ccbi")
	parent:addChild(self.owner)
	local hero1 = hero.new()
	hero1:initView(parent)
	--左边展示形象
	--右边分标签栏显示各种属性，已经吃了的东西
	--下边显示消化中的道具
	--移动以及拾取操作可参考饥荒
	--在下方控制框上面显示当前的属性状态(例如,被眩晕，被减数时间，淹水时的死亡倒计时，到危险时间时全屏显示红色)
	-- GameMgr.exitGame()
end

function M:updateView(  )
	
end

function M:updateEmoticon( id )
	
end
--道具列表
function M:initItemList(  )
	
end

return M
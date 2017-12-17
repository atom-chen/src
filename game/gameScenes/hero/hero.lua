--
-- Author: Your Name
-- Date: 2017-12-03 19:57:10
--
local M = class("galLayer",GameNode)
--[[
角色有的状态
受伤，buff
角色有的行为
移动，攻击，
状态机变化：

]]
function M:ctor(  )
	M.super.ctor(self)	
end

function M:setData(  )
	-- self.tlStates = {} --角色当前可能受到多种状态
	self.tlBehavior = {} --角色当前可能有多种行为或多种状态（移动射击）
	--某些行为或状态可能会冲突导致停止其他行为（被沉默，眩晕）
	self.TlComponent = {}
end
function M:initView( parent )
	-- display.addSpriteFrames("fight/npc/animation_s_npc1_1_att1.plist","fight/npc/animation_s_npc1_1_att1.png")
	-- self.owner=display.newSprite("#img_s_npc1_1_att1_01.png")
	self.owner = display.newNode()
	parent:addChild(self.owner)
end

function M:enterView(  )
	GameCacheMgr.getGameCacheByName("CacheItem"):bind(self,{
		onUpdate = function (  )
			-- print("AAAAAAAAAAA")
			self:updateView()
		end
	})
end

function M:exitView(  )
	
end

function M:updateView(  )
	self:changeState()
end

function M:changeState(  )
	
end

function M:getView(  )
	return self.owner
end

-- function M:handleMessage( cmdX )
-- 	for i,com in ipairs(self.components) do
-- 		com:handleMessage(cmdX)
-- 	end
-- end

function M:getBindType(  )
	--绑定的角色类型（根据不同类型，显示不一样）
end

function M:addBehaviorByCmdX(  )
	
end

function M:addBehavior(  )
	local component = ComponentFactory.createComponent(comName,self,params)
	if component.getDepends then
		for i,depends in ipairs(component:getDepends()) do
			if not self:getComponentByName(depends._type) then
				self:addComponent(depends)
			else
				print("已有该组件",depends._type)
			end			
		end
	end
	table.insert(self.components,component)
	if not self.TlComponent[params] then
		self.TlComponent[params] = {}
	end
	table.insert(self.TlComponent,component)
	self.TlComName[comName] = component
	-- if self.TlComName[comName].bindFunc then
	-- 	self.TlComName[comName]:bindFunc(self)
	-- end	
end

-- function M:move(  )
	
-- end

-- function M:attack(  )
	
-- end

return M
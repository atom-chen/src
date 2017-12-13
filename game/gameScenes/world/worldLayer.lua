--
-- Author: Your Name
-- Date: 2017-12-03 10:12:38
--
local M = class("GameNode")
function M:ctor(  )
	
end

function M:setData(  )
	
end

--[[
创建一个tilemap地图界面
地图上随机生成各种物品
角色拾取物品后可选择是否消化，
拾取的物品有上限，可开启格子
消化的物品无上限，
消化需要一定的时间，同一时间只能消化一个东西（此处可做购买操作）
]]
function M:initView( parent )
	local node = display.newNode()
	node:setContentSize(display.width,display.height)
	parent:addChild(node)
end

function M:updateView(  )
	-- body
end

return M
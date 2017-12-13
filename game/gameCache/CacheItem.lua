--
-- Author: Your Name
-- Date: 2016-05-24 23:40:37
--
local M = class(...,require("gameCaches.GameCache"))
local dataModel = {
	refId = 1,
	id = 1,
	num = 1,
	pos = 1,
}

local num = 1

function M:ctor(  )
	local params = {
		cacheName = "CacheItem",
		isRepeat = true,
		dataModel = dataModel,
	}
	M.super.ctor(self,params)
end
--首次初始化
-- function M:firstInit( cmdX )
-- 	-- if not cmdX then
-- 	-- 	self.cache = ref.getRef({refName = "refarmy"})
-- 	-- 	self:updateByProto(self.cache)
-- 	-- end
-- 	-- self.cache = cmdX
-- 	-- self.cache = ref.getRef({refName = "refarmy"})
-- 	self:updateByProto({})
-- end
function M:cleanup(  )
	self.cache = {}
end
--请求命令
function M:test( params )
	local data = params
	
	self:updateByProto(self.cache)
end
--初始化道具，每次进入新的地图时重新初始化
function M:newItem( params )
	num = num+1
	self:updateByProto({id = 2,refId = 2,num = num})
end
--吃道具，已经吃过的只会倒计时，不会重复
function M:eatItem(  )
	
end
--吐出道具
function M:spitItem(  )
	
end

return M
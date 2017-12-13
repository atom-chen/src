--
-- Author: Your Name
-- Date: 2017-12-13 23:38:04
--存储所吃过的物品，以及当前消化的时间
--
local M = class(...,require("gameCaches.GameCache"))
local dataModel = {
}

function M:ctor(  )
	local params = {
		cacheName = "CacheItem",
		isRepeat = true,
		dataModel = dataModel,
	}
	M.super.ctor(self,params)
end

function M:cleanup(  )
	self.cache = {}
end

return M
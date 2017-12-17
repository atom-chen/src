--
-- Author: Your Name
-- Date: 2017-12-08 23:59:04
--
local M = {}
local calcTime = 0
local params = 0

function M.init(  )
	--开启计时器
	GameMessage:addEventListener(GameMessage.time,function ( cmdX )
	end)
end

function M.clean(  )
	calcTime = 0
end
--获取在某个范围内的单位，用于技能或攻击
function M.getInRangeObj( ... )
	-- body
end

return M
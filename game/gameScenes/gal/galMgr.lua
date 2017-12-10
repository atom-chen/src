--
-- Author: Your Name
-- Date: 2017-12-08 23:59:04
--
local M = {}
local calcTime = 0

function M.init(  )
	--开启计时器
	GameMessage:addEventListener(GameMessage.time,function ( cmdX )
		calcTime = calcTime+1
	end)
end

function M.clean(  )
	calcTime = 0
end

return M
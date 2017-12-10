--
-- Author: Your Name
-- Date: 2017-12-01 21:52:00
--分发时间变化相关事件
local M = {}
local curTime = 0
local timeEvent = {}
GameMessage:addEventListener(GameMessage.enterGame,function()
    M.init()
end)

GameMessage:addEventListener(GameMessage.exitGame,function()
    M.cleanUp()
end)
function M.init(  )
	M.scheduler = require('framework.scheduler').scheduleUpdateGlobal(function ( dt )
        GameMessage:dispatchEvent{
            name = GameMessage.update,
            data = dt,
        }
    end)
    M.Timescheduler = require('framework.scheduler').scheduleGlobal(function ( dt )
        GameMessage:dispatchEvent{
            name = GameMessage.time,
            data = dt,
        }
        curTime = curTime+1
        for message,v in pairs(timeEvent) do
            if v == curTime then
                GameMessage:dispatchEvent{
                    name = message,
                }
                timeEvent[message] = nil
            end
        end
    end,1)
	--进行每秒运算，某个事件到点时进行分发
end

function M.cleanUp(  )
	curTime = 0
    timeEvent = {}
end
--添加事件时间点
function M.addTimeEvent( message,time )
	timeEvent[message] = time
end

return M

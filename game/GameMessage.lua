--
-- Author: Your Name
-- Date: 2017-12-01 21:48:37
--
local M = {}
cc(M):addComponent("components.behavior.EventProtocol"):exportMethods()
--objTime
M.update = "update"
M.time = "time"
--GameMgr
M.loginGame = "loginGame"
M.enterGame = "enterGame"
M.exitGame = "exitGame"
return M
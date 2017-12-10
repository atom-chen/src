--
-- Author: Your Name
-- Date: 2017-12-01 21:29:14
--
local M = {}

function M.loginGame(  )
	GameMessage:dispatchEvent{
        name = GameMessage.loginGame
    }
end

function M.enterGame(  )
	GameMessage:dispatchEvent{
        name = GameMessage.enterGame
    }
	GameSceneMgr.replaceLayer("game.gameScenes.gal.galLayer")
end

function M.exitGame(  )
	GameMessage:dispatchEvent{
        name = GameMessage.exitGame
    }
end

return M

require("game.Startup")
-- define global module
game = {}

function game.startup()
	--30帧
    cc.Director:getInstance():setAnimationInterval(1/30)

    --2d投影
    cc.Director:getInstance():setProjection(0)
    cc.FileUtils:getInstance():addSearchPath("res/")
    GameMgr.enterGame()
end

function game.exit()
    os.exit()
end
return game
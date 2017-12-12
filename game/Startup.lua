--
-- Author: Your Name
-- Date: 2016-05-12 09:45:06
--
local M = {}
GameMessage = require("game.GameMessage")
ModuleUtil = require("util.ModuleUtil")
--游戏管理器
GameMgr = require("game.GameMgr")
--debugging
------------------
-- require("game.debugging.debugging")
Helper = require("util.Helper")
ref = require("game.ref.json.ref")
GameNode = require("game.gameScenes.GameNode")
GameSceneMgr = require("game.gameScenes.GameSceneMgr").new()
display.replaceScene(GameSceneMgr)
GameObj = require("game.gameObjects.GameObj")
ObjTimeEvent = require("game.gameObjects.ObjTimeEvent")

return M
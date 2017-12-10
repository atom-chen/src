--
-- Author: Your Name
-- Date: 2017-12-02 15:56:22
--
local M = class(..., function()
    return display.newScene()
end)

local event = require("framework.cc.components.behavior.EventProtocol").new()
event:bind_(cc(M))
event:exportMethods()

local instance = nil

function M:ctor(  )
	M.instance = self
end

function M.getScene()
    return M.instance
end

function M.loadingLayer(  )
	
end

function M.coroutineCreate(f)
    coroutine.wrap(function()

        M.mask(true)

        --[[
        local status, result = pcall(f)
        if not status then
            printError("GameSceneMgr.coroutineCreate failed: %s", tostring(result))
        end
        ]]
        f()
        M.mask(false)

    end)()
end

function M:mgr(  )
    
end

function M.initLayer( clsGameLayer )
     local gameLayer = require(clsGameLayer).new({})
     gameLayer:initView(M.instance)
end

function M.replaceLayer( clsGameLayer )
	M.initLayer(clsGameLayer)
end

function M.pushLayer(  )
	
end

function M.popLayer(  )
end

function M.clearLayer(  )
	
end

return M
--
-- Author: Your Name
-- Date: 2017-12-03 20:10:40
--文字冒险类
local M = class("galLayer",GameNode)
local galMgr = import(".galMgr")
function M:ctor(  )
	galMgr.init()
end

function M:setData(  )
	
end


function M:initView( parent )
	self.owner = display.newNode()
	parent:addChild(self.owner)

	local label = display.newTTFLabel{
            text = "测试",
            size = 28,
            color = cc.c3b(100,100,100),
        }
    label:setPosition( display.cx,display.cy/4)
    self.owner:addChild(label,2)
    GameObj.ObjTimeEvent.addTimeEvent("test",10)
    GameMessage:addEventListener("test",function()
	    print("hahahahah")
	end)
end

function M:updateView(  )
	-- body
end

return M

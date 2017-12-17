--
-- Author: Your Name
-- Date: 2017-12-01 21:54:36
--
local M = class("galLayer",GameNode)

function M:ctor(  )
	M.super.ctor(self)
end

function M:initView( parent )
	-- M.super.initView(self,parent)
	
	display.addSpriteFrames("login/plist_ui_plist_login.plist","login/plist_ui_plist_login.png")
	self.owner = CCBReader.load("ccbi_login.ccbi")
    parent:addChild(self.owner)
end

function M:releaseView(  )
	
end

function M:updateView(  )
	
end

function M:bind(  )
	
end

function M:enterView(  )
	
end

function M:exitView(  )
	
end

function M:debug(  )
	
end

return M
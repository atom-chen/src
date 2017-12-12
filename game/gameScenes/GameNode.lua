--
-- Author: Your Name
-- Date: 2017-12-02 15:56:29
--用于创建
local M = class("GameNode")
function M:ctor( params )
	self:setData()
end

function M:setData(  )
	
end

function M:initView( parent )
	self.owner = display.newNode()
	parent:addChild(self.owner)
end

function M:getView(  )
	return self.owner
end

function M:enterView(  )
	
end

function M:exitView(  )
	
end

function M:releaseView(  )
	
end

return M
--
-- Author: Your Name
-- Date: 2017-12-15 21:42:46
--
local M = class("componentBase")
function M:ctor(  )
	self.actionName = ""
	-- self.tlActionName = {}
end

function M:setData(  )
	-- self.cache = getData()
end

function M:initView(  )
	
end

function M:updateView(  )
	
end

function M:handleMessage( messageName,cmdX )
	if self.actionName == messageName then
		self:setData()
		self:updateView()
	end
end

function M:enterView(  )
	
end

function M:exitView(  )
	
end

function M:sound(  )
	
end

return M
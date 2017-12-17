--
-- Author: yjxin
-- Date: 2016-08-29 23:32:42
--
local M = class(...,componentBase)
function M:ctor(params)
	M.super.ctor(self,params)	
	self:setData(params)
end
function M:setData(params )
	self.speed = 0
end

function M:bindFunc( target )
end
return M
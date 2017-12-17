--
-- Author: yjxin
-- Date: 2016-08-29 23:32:42
--
local M = class(...,componentBase)
function M:ctor(params)
	M.super.ctor(self,params)	
	self:setData(params)
end
-- function M:setData(params )
-- 	self.hp = 1
-- end
function M:enterView(  )
	self:bind(self,"hp",function ( cmdX )
		
	end)
end

function M:exitView(  )
	
end

function M:hurt(  )
	
end

-- function M:bindFunc( target )
-- end
return M
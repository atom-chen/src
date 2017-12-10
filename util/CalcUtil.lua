--
-- Author: Your Name
-- Date: 2017-12-02 11:38:02
--
local M = {}
--condition为额外条件
function M.getMaxKeyInTable( tab,key,condition )
	local maxLevel = 0
	if not condition then condition = true end
	for i,v in ipairs(tab) do
		if v[key]>maxLevel and condition then
			maxLevel = v[key]
		end
	end
	return maxLevel
end

function M.getMinKeyInTable( tab,key,condition )
	local minLevel = nil
	if not condition then condition = true end
	for i,v in ipairs(tab) do
		if condition then
			if not minLevel or v[key]<minLevel then
				minLevel = v[key]
			end
		end		
	end
	return minLevel
end

return M
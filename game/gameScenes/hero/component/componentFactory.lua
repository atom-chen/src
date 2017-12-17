--
-- Author: Your Name
-- Date: 2017-12-17 00:23:25
--
local M = {}

local comClass = {
	hp = {},
	attr = {},
}

function M.createComponent(componentName,target,params)
    local ok,class = pcall(function (  )
    	return component[componentName]
    end)
    if not ok then
    	return nil
    end
    assert(class ~= nil, string.format("ComponentFactory.createComponent() - Invalid behavior name \"%s\"", tostring(componentName)))
    local com = class.new(params)
    if not com.setTarget then
        print("componentName",componentName)
    end
    com:setTarget(target)
    com.name = componentName
    return com
end

return M
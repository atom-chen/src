--
-- Author: Your Name
-- Date: 2017-12-10 19:40:14
--
local M = class(...)

local m_instance = nil

function M.new()
    m_instance = setmetatable({}, M)
    m_instance.class = M
    m_instance:ctor()
    M.new = function()
        error("MapLoader can't direct call new()!")
    end
    return m_instance
end

function M.getInstance()
    if m_instance == nil then
        m_instance = M.new()
    end
    return m_instance
end

function M:ctor()
end

function M:setData(  )
	
end

return M
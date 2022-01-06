local M = {}

function M.init(highG , settings)
    local setin = ""
    for k,v in pairs(settings) do
	local format = string.format("%s=%s",tostring(k),v)
	setin = setin .. " " .. format
    end

    vim.cmd("highlight " .. highG .. setin)
end

return M

-- File: lua/langswitch/init.lua
local M = {}

-- store the last insert mode layout
M.last_insert_layout = 0 -- default = English (adjust as needed)

-- run a shell command and capture output
local function get_cmd_output(cmd)
	local handle = io.popen(cmd)
	if handle then
		local result = handle:read("*a")
		handle:close()
		return result:gsub("\n", "")
	end
	return ""
end

-- switch layout
local function switch_layout(id)
	os.execute("hyprctl switchxkblayout active " .. id)
end

-- when leaving insert mode: save current layout and switch to English (0)
function M.on_leave_insert()
	local layout = get_cmd_output("hyprctl devices -j | jq '.keyboards[0].active_layout_index'")
	if layout ~= "" then
		M.last_insert_layout = tonumber(layout)
	end
	switch_layout(0) -- English
end

-- when entering insert mode: restore previous layout
function M.on_enter_insert()
	switch_layout(M.last_insert_layout)
end

-- setup autocmds
function M.setup()
	vim.api.nvim_create_autocmd("InsertLeave", {
		callback = M.on_leave_insert,
	})
	vim.api.nvim_create_autocmd("InsertEnter", {
		callback = M.on_enter_insert,
	})
end

return M

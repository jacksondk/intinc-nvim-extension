local M = {}

function M.sayHelloWorld() 
	local row, col = unpack(vim.api.nvim_win_get_cursor(0))
	if row > 1 then
		local lines = vim.api.nvim_buf_get_lines(0, row-2, row, true)
    local t = lines[1]
    lines[1] =  lines[2]
    lines[2] = t
    print(vim.inspect(lines))
    vim.api.nvim_buf_set_lines(0, row-2, row, true, lines)
	end
end

return M


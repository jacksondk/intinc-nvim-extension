local M = {}

function M.sayHelloWorld() 
	local row, col = unpack(vim.api.nvim_win_get_cursor(0))
	if row > 1 then
		local lines = vim.api.nvim_buf_get_lines(0, row-1, row+1, true)
	end
	print(row, col) 
end

return M


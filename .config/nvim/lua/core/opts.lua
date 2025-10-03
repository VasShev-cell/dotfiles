function _G.MyTabLine()
	local s = ''
	for i = 1, vim.fn.tabpagenr('$') do
		local winnr = vim.fn.tabpagewinnr(i)
		local buflist = vim.fn.tabpagebuflist(i)
		local bufnr = buflist[winnr]
		local name = vim.fn.bufname(bufnr)
		local filename = name ~= '' and vim.fn.fnamemodify(name, ':t') or '[No Name]'
		local hl = (i == vim.fn.tabpagenr()) and '%#TabLineSel#' or '%#TabLine#'
		s = s .. hl .. ' ' .. i .. ': ' .. filename .. ' '
	end
	s = s .. '%#TabLineFill#'
	return s
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.splitbelow = true
vim.o.splitright = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.compatible = false
vim.o.smartindent = true
vim.o.relativenumber = true
vim.o.clipboard = 'unnamedplus'
vim.o.mouse = ""
vim.o.wrap = false
vim.o.showtabline = 2
vim.o.tabline = "%!v:lua.MyTabLine()"
vim.o.swapfile = false
vim.g.netrw_liststyle = 4
vim.g.netrw_banner = 0
vim.g.prettier = 1
vim.g.netrw_winsize = 25
vim.g.mapleader = " "
vim.g.maplocalleader = " "

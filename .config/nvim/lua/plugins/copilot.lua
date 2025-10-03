require("CopilotChat").setup({
	chat_autocomplete = false,
	model = 'gpt-4o',
	temperature = 0.1,
	auto_insert_mode = true,
	window = {
		layout = 'vertical',
		width = 80,
		height = 20,
		border = 'rounded',
		zindex = 100,
	},

	headers = {
		user = '👤 You',
		assistant = '🤖 Copilot',
		tool = '🔧 Tool',
	},

	separator = '━━',
	auto_fold = false,
})
vim.api.nvim_set_hl(0, 'CopilotChatHeader', { fg = '#7C3AED', bold = true })
vim.api.nvim_set_hl(0, 'CopilotChatSeparator', { fg = '#374151' })
vim.keymap.set('n', '<leader>ai', ':CopilotChatToggle<CR>')
vim.keymap.set('n', '<leader>ais', ':CopilotChatSave ')
vim.keymap.set('n', '<leader>ail', ':CopilotChatLoad ')

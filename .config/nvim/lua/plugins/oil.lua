-- oil keymaps
require('oil').setup({
	delete_to_trash = true,
	view_options = {
		show_hidden = true
	}
})
vim.keymap.set('n', '<leader>e', ':Oil<CR>')

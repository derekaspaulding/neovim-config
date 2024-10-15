-- Leap.nvim gives quick motion to any visible part of the file.

return {
	'ggandor/leap.nvim',
	dependencies = {
		'tpope/vim-repeat',
	},
	config = function ()
    vim.keymap.set({'n', 'x', 'o'}, 'f',  '<Plug>(leap-forward)')
    vim.keymap.set({'n', 'x', 'o'}, 'F',  '<Plug>(leap-backward)')
    vim.keymap.set({'n', 'x', 'o'}, 'gs', '<Plug>(leap-from-window)')
	end
}

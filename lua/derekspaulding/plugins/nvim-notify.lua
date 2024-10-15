return {
	'rcarriga/nvim-notify',
	lazy=false,
	priority=1000,
	config = function()
		vim.notify = require("notify")
		vim.keymap.set('n', '<leader>sn', 
			require('telescope').extensions.notify.notify)
	end
}

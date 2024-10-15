return { 
	"catppuccin/nvim", 
	name = "catppuccin", 
	lazy = false,
	priority = 10000,
	config = function()
		vim.cmd.colorscheme("catppuccin-mocha")
	end
}

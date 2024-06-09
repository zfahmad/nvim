return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
			})
			-- vim.cmd.colorscheme "catppuccin"
			vim.opt.colorcolumn = "80"
		end,
	},
}

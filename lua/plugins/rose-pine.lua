return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({})
		vim.cmd("colorscheme rose-pine-moon")
	end,

	-- vim.cmd("colorscheme rose-pine-moon"),
	-- vim.cmd("colorscheme rose-pine-main")
	-- vim.cmd("colorscheme rose-pine-dawn")
}

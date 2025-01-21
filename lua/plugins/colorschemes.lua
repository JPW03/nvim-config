return {
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
	{
		"sainnhe/everforest",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.everforest_background = "hard"
			vim.g.everforest_enable_italic = true
			vim.cmd.colorscheme("everforest")
		end,
	},
	{
		"samharju/synthweave.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("synthweave")
			-- transparent version
			-- vim.cmd.colorscheme("synthweave-transparent")
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme("nightfox")
		end,
	},
}

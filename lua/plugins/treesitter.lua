return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = "all",
				auto_install = true, -- Note: tree-sitter-cli should be installed (npm install --global tree-sitter-cli)
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}

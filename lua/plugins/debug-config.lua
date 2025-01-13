return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
		"williamboman/mason.nvim",
		"jay-babu/mason-nvim-dap.nvim",
	},
	config = function()
		local dap, dapui, mason_dap = require("dap"), require("dapui"), require("mason-nvim-dap")

		dapui.setup()

		-- See list of Mason DAPs
		-- https://github.com/jay-babu/mason-nvim-dap.nvim/blob/main/lua/mason-nvim-dap/mappings/source.lua
		mason_dap.setup({
			ensure_installed = { "codelldb" },
			handlers = {
				function(config)
                    -- Default handler
					mason_dap.default_setup(config)
				end,
                -- For debug specific handlers, see the mason-nvim-dap README for example
			},
		})

		-- Dap UI listeners to automatically open/close the UI, as suggested by nvim-dap-ui README
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- For other suggested keymaps
		-- https://github.com/mfussenegger/nvim-dap/blob/0e673accbb512e1e191dfb4fecea89cc38c1bcdd/doc/dap.txt#L490 or :help dap.txt
		vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<leader>dc", dap.continue, {}) -- This starts the debug session

		-- Specific instructions on how to install specific debuggers
		-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
	end,
}

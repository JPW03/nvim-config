return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")

        dapui.setup()

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
        vim.keymap.set("n", "<leader>dc", dap.continue, {})

        -- Specific instructions on how to install specific debuggers
        -- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
        -- No debuggers configured for now :D
    end,
}

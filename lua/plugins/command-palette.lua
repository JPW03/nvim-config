return {
    "muchzill4/yacp.nvim",
    config = function()
        local yacp = require("yacp")

        yacp.setup({
            provider = "native", -- native (default, uses vim.ui.select) | telescope | fzf
            palette = {
                { name = "List help manuals", cmd = "Telescope help_tags" },
                -- Command can also be a function:
                -- {
                    -- name = "hi",
                    -- cmd = function()
                        -- print("HI!")
                    -- end,
                -- },
           },
        })

        vim.keymap.set('n', '<leader>cp', yacp.yacp, {})
    end,
}

return {
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvimtools/none-ls-extras.nvim",
        },
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    -- Lua
                    null_ls.builtins.formatting.stylua,
                    -- Typescript/Javascript
                    null_ls.builtins.formatting.prettierd,
                    require("none-ls.code_actions.eslint"), -- See https://github.com/nvimtools/none-ls.nvim/discussions/81
                    require("none-ls.diagnostics.eslint"),
                    -- Go
                    null_ls.builtins.diagnostics.golangci_lint,
                    null_ls.builtins.formatting.goimports,
                    -- Python
                    null_ls.builtins.formatting.black,
                },
            })

            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        end,
    },
}

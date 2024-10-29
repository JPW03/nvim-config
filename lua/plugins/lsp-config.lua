return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                -- List of LSPs: https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers
                ensure_installed = {
                    "lua_ls"
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})

            -- `:help vim.lsp.buf` for the list of lspconfig commands

            -- Navigation
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            -- Code features
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
            vim.keymap.set('n', '<leader>f', function()
                vim.lsp.buf.format { async = true }
            end, {})
            vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {})
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
            -- Workspace control
            vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, {})
            vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, {})
            vim.keymap.set('n', '<leader>wl', function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, {})
        end
    }
}

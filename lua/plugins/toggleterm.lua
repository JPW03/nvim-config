return {
    {
        'akinsho/toggleterm.nvim',
        version = '*',
        config = function()
            local toggleterm = require('toggleterm')
            toggleterm.setup({})
            -- TODO setup keymap for this or just use :terminal
            -- TODO also fix the terminal dark blue colour, its far too difficult to see

            -- Custom terminals
            -- https://github.com/akinsho/toggleterm.nvim?tab=readme-ov-file#custom-terminals
            local terminal = require('toggleterm.terminal').Terminal
            local lazygit = terminal:new({
                cmd = 'lazygit',
                direction = 'float',
                float_opts = {
                    border = 'curved',
                },
                on_open = function ()
                    vim.cmd('startinsert') -- start in terminal mode not normal mode
                    -- TODO fix opening lazygit for after the first time in the same session, doesn't start in terminal mode
                end,
                hidden = true
            })

            -- Keymaps
            vim.keymap.set('n', '<leader>git', function ()
                lazygit:toggle()
            end)
            vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>')
            vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]]) -- Switch window in terminal mode
            vim.keymap.set('t', '<leader><esc>', [[<C-\><C-n>:q<CR>]]) -- Close terminal from terminal mode
        end,
    }
}

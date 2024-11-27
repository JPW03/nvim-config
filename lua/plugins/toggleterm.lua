return {
    {
        'akinsho/toggleterm.nvim',
        version = '*',
        config = function()
            local toggleterm = require('toggleterm')
            toggleterm.setup({})
            -- TODO setup keymap for this or just use :terminal
            -- TODO also fix the terminal dark blue colour, its far too difficult to see
        end,
    }
    -- This in combination with LazyGit is my Git integration
}

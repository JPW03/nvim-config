# nvim-config
My personal nvim config, mostly based on [typecraft's "From 0 to IDE"](https://www.youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn).

Preferred nerd font: [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)

Preferred terminal (all the NVim colour scheming works here): [WezTerm](https://wezfurlong.org/wezterm/index.html)

Clone to:
- Unix: `~/.config/nvim/`
- Windows: `~/AppData/Local/nvim/`

## Prerequisites

Most of the plugins will install automatically upon opening nvim for the first time.

Other external dependencies:
- Node/NPM for some automatically installed language tools
- Python (specifically exposing the `python3` command)
- [ripgrep](https://github.com/BurntSushi/ripgrep) for telescope.nvim
- [lazygit](https://github.com/jesseduffield/lazygit) for integrated git window

## Feature Summary

- LSP support
- Colour scheme and nerd font support
- File system exploring with Neotree (use `<C-N>` to open)
- Grepping the workspace with `<leader>fg`
- Fuzzy file finder with `<C-P>`
- Integrated Lazygit panel with `<leader>git` (exit same as terminal)
- Integrated terminal with `<leader>t` (exit with `<C-W><C-W>`)

## Tips

Remember to use `:checkhealth` if any problems are encountered with package running/installation.

Create an command line function for `edit-nvim-config`, which navigates to the nvim config dir and opens nvim.
- Windows PowerShell: `Function edit-nvim-config { cd C:\Users\You\AppData\Local\nvim\ && nvim }`

If on Windows, install the Terminal Preview (don't use the default terminal) else colour schemes and nerd fonts won't work.


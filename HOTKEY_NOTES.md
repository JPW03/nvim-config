# Random Notes on Random NVIM Commands I looked up

I want to clear a search: `:noh` (no highlighting command)

I want to remove a single character: `x`

Go to:
- Start of the file: `gg`
- End of the file: `G`
- Next word: `w` (goes to start) or `e` (goes to end)
- Previous word: `b` (goes to start) or `ge` (goes to end)
- Go to instance of (character) on line: Next = `f(character)`, Previous = `F(character)`
- Move through paragraphs: `{` and `}`
- Move through sentences: `(` and `)`

I want to indent a single line: `>`
I want to indent multiple lines: `v` for visual mode -> select the text you want to indent -> `>`

Start recording a macro: `qx` where `x` is some character
Save the macro: `q`
Execute the macro: `@x` where `x` is some character

I want to go back to the previous file: `<C-^>`

I want to copy text to my system clipboard: `"+y` (" = preparing for register input, + = the register representing the clipboard, y = yank command)

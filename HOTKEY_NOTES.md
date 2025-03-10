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
- Next occurrance of this word: `*`
- Previous occurrance of this word: `#`
- Go to the character before the Nth instance of (character): `Nt(character)`
- Go to the occurrance of your previous search (`/search-term`): Next = `n`, Previous = `N`
    - Go to the Nth occurrance of your last search: `ggNn`

I want to indent a single line: `>`
I want to indent multiple lines: `v` for visual mode -> select the text you want to indent -> `>`

Start recording a macro: `qx` where `x` is some character
Save the macro: `q`
Execute the macro: `@x` where `x` is some character

I want to go back to the previous file: `<C-^>`

I want to copy text to my system (MacOS only?) clipboard: `"+y` (" = preparing for register input, + = the register representing the clipboard, y = yank command)

I want to replace a phrase from "this" to "that" across the whole file: `:%s/this/that/g`
- Note that the `/g` enables multiple replacements per line instead of limited to 1 replacement per line

I want to paste something in INSERT mode from register N: `<C-R>N`

I want to repeat the last change: `.`

I want to delete a word but don't want to override the paste buffer: `"_dw` (a.k.a the blackhole register)

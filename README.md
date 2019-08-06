# Arch Linux Development Environment

## Overview

| Application | Package |
| --- | --- |
| Window Manager | i3 |
| Panel | polybar |
| Editor | Vim |
| Shell | Zsh |
| File Manager | ranger |
| E-Mail Client | mutt |
| IRC Client | irssi |

## Vim

Plugin Manager: [Plug]()
Color Scheme: [Neodark](https://github.com/KeitaNakamura/neodark.vim)

| Lightline | Configurable Statusline | [Github](https://github.com/itchyny/lightline.vim)
| Vim Multiple Cursors | Multiple Cursors like SublimeText | [Github](https://github.com/terryma/vim-multiple-cursors)
|
| NERDTree | Tree Explorer | [Github](https://github.com/scrooloose/nerdtree)
| EditorConfig | .editconfig Support | [Github](https://github.com/editorconfig/editorconfig-vim)
| Emmet | Emmet Support | [Github](https://github.com/mattn/emmet-vim)
| GitGutter | Show git diff in the gutter | [Github](https://github.com/airblade/vim-gitgutter)
| Syntastic | Syntax checker | [Github](https://github.com/vim-syntastic/syntastic)
| PHPComplete | PHP Autocomplete | [Github](https://github.com/shawncplus/phpcomplete.vim)

### GitGutter

Commands:

- Turn off with `:GitGutterDisable`
- Turn on with `:GitGutterEnable`
- Toggle with `:GitGutterToggle`
- Sign on with `:GitGutterSignsEnable`
- Sign off with `:GitGutterSignsDisable`
- Sign toggle with `:GitGutterSingsToggle`
- Line highlight on with `:GitGutterLineHighlightsEnable`
- Line highlight off with `:GitGutterLineHighlightsDisable`
- Line highlight toggle with `:GitGutterLineHighlightsToggle`

Keymaps:

- <kbd>]</kbd>+<kbd>c</kbd> - Jump to next change
- <kbd>[</kbd>+<kbd>c</kbd> - Jump to prev change
- <kbd>\\</kbd>+<kbd>h</kbd>+<kbd>s</kbd> - Stage current change (on cursor)
- <kbd>\\</kbd>+<kbd>h</kbd>+<kbd>u</kbd> - Undo current change (on cursor)

### Emmet

Type emmet code and <kbd>Ctrl</kbd>+<kbd>y</kbd> then <kbd>,</kbd> type

### NERDTree

- <kbd>Ctrl</kbd>+<kbd>o</kbd> opens NERDTree

### Vim Multiple Cursors

Go to `selection` mode and select, start multiple cursors:

- <kbd>Ctrl</kbd>+<kbd>n</kbd> start multicursor
  - <kbd>Ctrl</kbd>+<kbd>n</kbd> add new virtual cursor
  - <kbd>Ctrl</kbd>+<kbd>x</kbd> skip next match
  - <kbd>Ctrl</kbd>+<kbd>p</kbd> remove current virtual cursor
- <kbd>Esc</kbd> exit back to regular Vim

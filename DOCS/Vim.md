Eray's VimRC
============

![Example Screen](https://raw.githubusercontent.com/erayaydin/dotfiles/master/RESOURCES/vimrc.png)

**Version: 0.1 - Baby**

## How To Install

Install [Vundle](https://github.com/VundleVim/Vundle.vim) for Vim.

Change my `.vimrc` file with yours(`~/.vimrc`).

## Plugins

- Plugin Manager
  - [Vundle](https://github.com/VundleVim/Vundle.vim)
- File Explorer
  - [The NERDTree](https://github.com/scrooloose/nerdtree)
- Completion
  - [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
- Git
  - [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
  - [fugitive](https://github.com/tpope/vim-fugitive)
- Syntax
  - [Syntastic](https://github.com/vim-syntastic/syntastic)
  - [surround](https://github.com/tpope/vim-surround)
  - [SCSS Syntax](https://github.com/cakebaker/scss-syntax.vim)
  - [YAJS](https://github.com/othree/yajs.vim)
  - [Jinja Syntax](https://github.com/mitsuhiko/vim-jinja)
  - [vim.cpp](https://github.com/octol/vim-cpp-enhanced-highlight)
  - [CSS Color Preview](https://github.com/ap/vim-css-color)
- Manipulate
  - [Easymotion](https://github.com/easymotion/vim-easymotion)
- Snippet
  - [UltiSnips](https://github.com/SirVer/ultisnips)
- Status Bar
  - [Airline](https://github.com/vim-airline/vim-airline)
- Theme
  - [Gruvbox](https://github.com/morhetz/gruvbox)

## NERDTree - File Browser

For toggle **NERDTree** use <kbd>Ctrl</kbd>+<kbd>t</kbd>.

## UltiSnips - Snippet

Use <kbd>Alt</kbd>+<kbd>Enter</kbd> for expand auto completions.

## Tabs Navigation

Use <kbd>Ctrl</kbd>+<kbd>←</kbd> and <kbd>Ctrl</kbd>+<kbd>→</kbd> for moving on tabs.

Use <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>←</kbd> and <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>→</kbd> for move tabs.

## Temp Directory Feature

`backup`, `swap` and `undofile` files stored in `~/.temp/vim` folder automatically. Folders will be created by `.vimrc`

```
.temp
└── vim
    ├── backup
    ├── swap
    └── undo
```

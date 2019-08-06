" Eray's VimRC
" ============
"
" Maintainer: Eray Aydın <er@yayd.in>
" Init: 2017-10-20
" Version: 2.0 (teen)
" Last Change: 2018-12-04

" /----------/
" / INDEX OF /
" /----------/
" / 1. BOOT  /
" ////////////

" ===========
" = 1. BOOT =
" ===========

" Set compatibility to Vim only
set nocompatible

" Helps for plugins load correctly, we turned on again (below)
filetype off

" ==============
" = 2. PLUGINS =
" ==============

call plug#begin('~/.vim/plug')

Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install'}

" Neodark - Color Schema
" ------------------------
"  Github: https://github.com/KeitaNakamura/neodark.vim
Plug 'KeitaNakamura/neodark.vim'

" Lightline - Configurable Statusline
" -----------------------------------
"  Github: https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

Plug 'ajh17/VimCompletesMe'
" Plug 'davidhalter/jedi-vim'

" Vim Multiple Cursors
" --------------------
"  Github: https://github.com/terryma/vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" NERDTree - Tree Explorer
" ------------------------
"  Github: https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

" Editorconfig
" ------------
"  Github: https://github.com/editorconfig/editorconfig-vim
Plug 'editorconfig/editorconfig-vim'

" Emmet
" -----
"  Github: https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'

" GitGutter - Show git diff in the gutter
" ---------------------------------------
"  Github: https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" Syntastic - Syntax Checker
" --------------------------
"  Github: https://github.com/vim-syntastic/syntastic
Plug 'vim-syntastic/syntastic'

Plug 'shawncplus/phpcomplete.vim'

Plug 'blindFS/vim-taskwarrior'

Plug 'posva/vim-vue'

Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-composer' 
Plug 'noahfrederick/vim-laravel'


call plug#end()

" =======================
" = 3. GENERAL SETTINGS =
" =======================

" Syntax Highlighting
syntax enable

" Enable ruler
set ruler

" Hide buffer when abandoned
set hidden

" Show line numbers
set number

" Last window will have a status line ALWAYS
set laststatus=2

" Smart auto indentation
set smartindent

" For Amiga; use shell only for ':sh' command
set st=4

" Use spaces for tab
set et

" Use 4 spaces for indent
set shiftwidth=4

" Number of spaces that a Tab in the file counts for
set tabstop=4

" Tallest window possible
set lines=999 columns=999

" Colorscheme
colorscheme neodark

" Try to use colors that look good on a dark background
set background=dark

" ===========
" = 4. Path =
" ===========

" Base Directory
" --------------
"  Description: Create base directory if its not exists
if isdirectory('~/.temp') == 0
	:silent !mkdir -p ~/.temp/vim > /dev/null 2>&1
endif

" Backup
" ------
"  Description: Save your backup files to less annoying place
if exists("+backup")
	if isdirectory('~/.temp/vim/backup') == 0
		:silent !mkdir -p ~/.temp/vim/backup > /dev/null 2>&1
	endif
	set backupdir=~/.temp/vim/backup
endif
set backup

" Swap
" ----
"  Description: This allows you to set less annoying directory for swap files.
if exists("+directory")
	if isdirectory('~/.temp/vim/swap') == 0
		:silent !mkdir -p ~/.temp/vim/swap > /dev/null 2>&1
	endif
	set directory=~/.temp/vim/swap//
endif

" Undofile
" --------
"  Version: 7.3+
"  Description: Allows you to use 'undos' after exiting and restarting
if has("persistent_undo")
	if isdirectory('~/.temp/vim/undo') == 0
		:silent !mkdir -p ~/.temp/vim/undo > /dev/null 2>&1
	endif
	set undodir=~/.temp/vim/undo//
	set undofile
endif

" ===========================
" = 5. PLUGIN CUSTOMIZATION =
" ===========================

" -- NERDTree --

" NERDTree open with Ctrl+O
map <C-o> :NERDTreeToggle<CR>

" Open NERDTree when starting vim with folder
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close NERDTree when only window left is it
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show hidden files in NERDTree (You can toggle with Ctrl+I)
let NERDTreeShowHidden=1

" -- Emmet --

" Support emmet for only HTML and CSS files
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" -- Syntastic --
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" =============
" = 5. Ending =
" =============
set secure

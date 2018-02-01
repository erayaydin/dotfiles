" Eray's VimRC
" ============
" Maintainer:  Eray Aydın <aydineray@mail.com>
" Init:	       2017-10-20
" Version:     1.0 (baby)
" Last Change: 2018-02-01

" /-------------------------/
" /        INDEX OF         /
" /-------------------------/
" / 1. BOOT                 /
" / 2. PLUGINS              /
" / 3. GENERAL SETTINGS     /
" / 4. PLUGIN CONFIGURATION /
" / 5. BACK TO NORMAL       /
" ///////////////////////////

" ===========
" = 1. BOOT =
" ===========
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set exrc

" ==============
" = 2. PLUGINS =
" ==============
" Plugin Manager
" - Vundle
" File Explorer
" - The NERDTree
" Completion
" - YouCompleteMe
" Git
" - vim-gitgutter
" - fugitive
" Syntax
" - Synastic
" - surround
" - SCSS Syntax
" - YAJS
" - Jinja Syntax
" - vim.cpp
" - CSS Color Preview
" Manipluate
" - Easy Motion
" Snippet
" - UltiSnips
" Status Bar
" - Airline
" Theme
" - Gruvbox
call vundle#begin()

" Vundle - Plugin Manager
" -----------------------
" Github: https://github.com/VundleVim/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" The NERDTree - File System Explorer Plugin
" ------------------------------------------
" Github: https://github.com/scrooloose/nerdtree 
Plugin 'scrooloose/nerdtree'

" YouCompleteMe - Code-Completion Engine
" --------------------------------------
" Github: https://github.com/Valloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" vim-gitgutter - Git Diff in the Gutter
" --------------------------------------
" Github: https://github.com/airblade/vim-gitgutter
Plugin 'airblade/vim-gitgutter'

" fugitive - Git Wrapper
" ----------------------
" Github: https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

" Syntastic - Syntax Checking Plugin
" ----------------------------------
" Github: https://github.com/vim-syntastic/syntastic
Plugin 'scrooloose/syntastic'

" surround - Surrounding Plugin
" -----------------------------
" Github: https://github.com/tpope/vim-surround
Plugin 'tpope/vim-surround'

" SCSS Syntax
" -----------
" Github: https://github.com/cakebaker/scss-syntax.vim
Plugin 'cakebaker/scss-syntax.vim'

" YAJS - Javascript Syntax
" ------------------------
" Github: https://github.com/othree/yajs.vim
Plugin 'othree/yajs.vim'

" Jinja Syntax
" ------------
" Github: https://github.com/mitsuhiko/vim-jinja
Plugin 'mitsuhiko/vim-jinja'

" vim.cpp - C++ Syntax
" --------------------
" Github: https://github.com/octol/vim-cpp-enhanced-highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" CSS Color Preview
" -----------------
" Github: https://github.com/ap/vim-css-color
Plugin 'ap/vim-css-color'

" Easy Motion - Search and Move
" -----------------------------
" Github: https://github.com/easymotion/vim-easymotion
Plugin 'easymotion/vim-easymotion'

" UltiSnips - Snippets
" --------------------
" Github: https://github.com/SirVer/ultisnips
Plugin 'SirVer/ultisnips'

" Airline - Status Bar
" ----------
" Github: https://github.com/vim-airline/vim-airline
Plugin 'bling/vim-airline'

" Gruvbox - Theme
" ---------------
" Github: 'https://github.com/morhetz/gruvbox
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

" =======================
" = 3. GENERAL SETTINGS =
" =======================

colorscheme gruvbox
set guifont=Monospace\ 10
set fillchars+=vert:\$
syntax enable
set background=dark
set ruler
set hidden
set number
set laststatus=2
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
let &colorcolumn="80"
:set guioptions-=m " remove menubar
:set guioptions-=T " remove toolbar
:set guioptions-=r " remove right-scrollbar
:set guioptions-=L " remove left-scrollbar
:set lines=999 columns=999

" Base Directory
" --------------
"  Description: Create base directory if its not exists
if isdirectory('~/.temp') == 0
	:silent !mkdir -p ~/.temp > /dev/null 2>&1
endif

" Backup
" ------
"  Description: Save your backup files to less annoying place
if exists("+backup")
	if isdirectory('~/.temp/vim/backup') == 0
		:silent !mkdir -p ~/.temp/vim/backup > /dev/null 2>&1
	endif
	set backupdir=~/.temp/vim/backup
	set backup
endif

" Swap
" ----
"  Description: This allows you to set less annoying directory for creating
"  swap files.
if exists("+directory")
	if isdirectory('~/.temp/vim/swap') == 0
		:silent !mkdir -p ~/.temp/vim/swap > /dev/null 2>&1
	endif
	set directory=~/.temp/vim/swap//
endif

" Undofile
" --------
"  Version: 7.3+
"  Description: This allows you to use 'undos' after exiting and restarting
if has("persistent_undo")
	" Checking directory exists...
	if isdirectory('~/.temp/vim/undo') == 0
		:silent !mkdir -p ~/.temp/vim/undo > /dev/null 2>&1
	endif

	" Set undo option
	set undodir=~/.temp/vim/undo//
	set undofile
endif

" Tabs
" ====
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <C-S-Left> :execute 'silent! tabmove '.(tabpagenr()-2)<CR>
nnoremap <silent> <C-S-Right> :execute 'silent! tabmove '.(tabpagenr()+1)<CR>
let notabs=0
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>
cabbrev tabv tab sview +setlocal\ nomodifiable

" ===========================
" = 4. PLUGIN CONFIGURATION =
" ===========================

" NERDTree
" --------
let NERDTreeIgnore=['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', 'a-zA-Z*egg[a-zA-Z]$', '.DS_Store']
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

" Syntastic
" ---------
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_mri_args="--config=$HOME/.jshintrc"
let g:syntastic_python_checkers=['pylint', 'flake8', 'pep8', 'pyflakes', 'python']
let g:syntastic_yaml_checkers=['jsyaml']
let g:syntastic_html_tidy_exec='tidy5'

" Snippets
" --------
let g:UltiSnipsExpandTrigger="<A-ENTER>"
let g:UltiSnipsJumpForwardTrigger="<A-ENTER>"
let g:UltiSnipsJumpBackwardTrigger="<A-BACKSPACE>"
let g:UltiSnipsEditSplit="vertical"

" Easymotion
" ----------
let g:EasyMotion_do_mapping=0
let g:EasyMotion_smartcase=1
nmap f <Plug>(easymotion-s)

" =====================
" = 5. BACK TO NORMAL =
" =====================
set secure

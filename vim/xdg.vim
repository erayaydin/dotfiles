" Sets up Vim to use directories specified by XDG environment variables
"
" Implementation inspired by:
" https://github.com/sds/.vim/blob/master/xdg.vim

if empty($XDG_CACHE_HOME)
  let $XDG_CACHE_HOME = $HOME.'/.cache'
endif
if empty($XDG_CONFIG_HOME)
  let $XDG_CONFIG_HOME = $HOME.'/.config'
endif

" Swap
" ----
"  Description: This allows you to set less annoying directory for swap files.
if exists("+directory")
    if !isdirectory($XDG_CACHE_HOME . "/vim/swap")
        call mkdir($XDG_CACHE_HOME . "/vim/swap", "p")
    endif
    set directory=$XDG_CACHE_HOME/vim/swap//,/var/tmp//,/tmp//
endif

" Undofile
" --------
"  Version: 7.3+
"  Description: Allows you to use 'undos' after exiting and restarting
if has("persistent_undo")
    if !isdirectory($XDG_CACHE_HOME . "/vim/undo")
        call mkdir($XDG_CACHE_HOME . "/vim/undo", "p")
    endif
    set undodir=$XDG_CACHE_HOME/vim/undo//,/var/tmp//,/tmp//
    set undofile
endif

" Backup
" ------
"  Description: Save your backup files to less annoying place.
if exists("+backup")
    if !isdirectory($XDG_CACHE_HOME . "/vim/backup")
        call mkdir($XDG_CACHE_HOME . "/vim/backup", "p")
    endif
    set backupdir=$XDG_CACHE_HOME/vim/backup//,/var/tmp//,/tmp//
endif
" Double slash does not actually work for backupdir, here's a fix
au BufWritePre * let &backupext='@'.substitute(substitute(substitute(expand('%:p:h'), '/', '%', 'g'), '\', '%', 'g'), ':', '', 'g')
set backup

" Viminfo
" -------
set viminfo+=n$XDG_CACHE_HOME/vim/viminfo

" Runtime
" -------
set runtimepath-=~/.vim
set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath-=~/.vim/after
set runtimepath+=$XDG_CONFIG_HOME/vim/after

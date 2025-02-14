" ===[ General ]==={{{

" Disable compatibility with vi
set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on
set number
set cursorline
set scrolloff=5
set nowrap
set showcmd

" Indentation
set shiftwidth=4
set tabstop=4

" Visual column at textwidth limit
set colorcolumn=+1

" }}}
" ===[ Colours & Highlight ]{{{

hi CursorLine term=none cterm=none ctermbg=238
hi CursorLineNr term=bold cterm=bold

hi ColorColumn ctermbg=8

" }}}
" ===[ Git commit ]=== {{{

" Git commit configuration
augroup ft_gitcommit
	autocmd!
	autocmd FileType gitcommit setlocal textwidth=72
	autocmd FileType gitcommit setlocal spell
augroup END

" }}}
" ===[ Vimscript ]==={{{

augroup ft_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
	autocmd FileType vim setlocal colorcolumn=0
	autocmd Filetype vim setlocal wrap
augroup END

" }}}
" ===[ SSH Config ]=== {{{

augroup ft_sshconfig
	autocmd!
	autocmd FileType sshconfig setlocal foldmethod=marker
augroup END
" }}}

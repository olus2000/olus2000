" Search
set hls
set ignorecase
set smartcase

" Coding
syntax on
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set relativenumber

" Convenience
set confirm
set mouse=a
set encoding=utf-8

" Splitting buffers
set splitbelow
set splitright

" Folding
set foldlevel=99
set foldclose=all
set foldmethod=indent

set nocompatible
filetype plugin indent on
syntax on
set tw=80
set clipboard+=unnamedplus
set diffopt+=vertical

" " vim-plug
" call plug#begin('~/nvim/plugged')
" 
" Plug 'godlygeek/tabular'
" Plug 'preservim/vim-markdown'
" Plug 'vimwiki/vimwiki'
" 
" call plug#end()

" map something (none of this actually works
autocmd FileType python map <buffer> <F7> :call flake8#Flake8()<CR>
autocmd FileType forth map <buffer> <F5> :w<CR> :!gforth %<CR>
autocmd FileType lua map <buffer> <F5> :w<CR> :!lua -i -v %<CR>


" big tabs
" autocmd FileType <type> setlocal shiftwidth=4 tabstop=4

" Fuck factor standards specifically
autocmd FileType factor setlocal shiftwidth=2 tabstop=2

" " vimwiki
" let g:vimwiki_list = [{'path': '~/share/projects/vimwiki/wiki',
"             \'path_html': '~/share/projects/vimwiki/html',
"             \'auto_toc': 1}]
" 
" let g:vimwiki_ext2syntax = { }

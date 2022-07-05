" Search
set hls
set ignorecase
set smartcase

" Coding
syntax on
set autoindent
set tabstop=4
set shiftwidth=4
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

" map something
autocmd FileType python map <buffer> <F7> :call flake8#Flake8()<CR>
autocmd FileType forth map <buffer> <F5> :w<CR> :!gforth %<CR>

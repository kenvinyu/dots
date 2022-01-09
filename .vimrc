" Plugins
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'

call plug#end()

" Colors
syntax enable
filetype plugin on
set termguicolors
set background=dark

let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material

" Tabs and Spaces
filetype indent on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

" File Find
set path+=**
set wildmenu
set wildignore+=**/node_modules/** 
set hidden

" UI
let mapleader=","
set number
set relativenumber
set modelines=1
set showcmd
set cursorline
set showmatch
set scrolloff=10 
set ruler
" set cmdheight=2
" set signcolumn=yes
" set updatetime=50
" set shortmess+=c

" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase

" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.colnr = ' '
let g:airline_theme = 'material'

" VIMRC
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

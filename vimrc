set nocompatible
set modelines=0

" Tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Lines numbers and cols
set number
set ruler

" Generic
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" Leader
let mapleader = ","

" Searching
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Long Lines
set wrap
set textwidth=72
set formatoptions=qrn1
set colorcolumn=85

" Colorscheme
colorscheme codeschool
syntax on

" History
set history=10000

" White Spaces
autocmd BufWritePre * :%s/\s\+$//e

" Invisible Characters
set list
set listchars=eol:¬

" Good
nnoremap ; :

" Always Save
au FocusLost * :wa

" Leader maps
nnoremap <leader>w <C-w>v<C-w>l

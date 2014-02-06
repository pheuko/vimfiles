set nocompatible
set modelines=0

" Swap Off
set noswapfile
set nobackup
set nowb

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
set guioptions-=L
set wildignore+=*.o,*.obj,.git,*.gz,*.un~
set splitright
set splitbelow

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

" History
set history=10000

" White Spaces
autocmd BufWritePre * :%s/\s\+$//e

" Invisible Characters
set list
set listchars=eol:¬

" Good
nnoremap ; :

" Statusline
set statusline=%<\ %n::%f%{fugitive#statusline()}\ %m%r%y
set statusline+=%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" Always Save
au FocusLost * :wa

" Vim Bundle

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle manage Vundle
Bundle 'gmarik/vundle'

" Bundles here:"
" - Original Github Repos
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'thoughtbot/vim-rspec'
Bundle 'chase/vim-ansible-yaml'
" - Vim-scripts Repos
Bundle 'YankRing.vim'
Bundle 'repeat.vim'
Bundle 'surround.vim'
Bundle 'nginx.vim'
Bundle 'rainbow_parentheses.vim'
Bundle 'Command-T'
Bundle 'preview'
Bundle 'csv.vim'
Bundle 'unimpaired.vim'

" - Non Github Repos
" - Local Repos

filetype plugin indent on

" Long Lines
set nowrap
set linebreak
set textwidth=72
set formatoptions=qrn1
set colorcolumn=80

" Plugins Options
let g:CommandTWildIgnore=&wildignore . ",**/node_modules/*"
au BufRead,BufNewFile *.md set filetype=markdown

autocmd FocusGained * CommandTFlush
autocmd BufWritePost * CommandTFlush

" Leader maps
nnoremap <leader>n :vsp<cr>
nnoremap <leader>d :NERDTreeToggle<cr>
nnoremap <leader>( :RainbowParenthesesToggle<cr>
nnoremap <silent> \ :YRShow<cr>
nnoremap <S-w> <C-w>
inoremap <silent> \ <ESC>:YRShow<cr>
inoremap jj <ESC>

" Open vimrc or gvimrc
nnoremap <leader>vv :vsp $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>gv :vsp $MYGVIMRC<cr>
nnoremap <leader>gs :source $MYGVIMRC<cr>

" Identations
vnoremap << <gv
vnoremap >> >gv
vnoremap = =gv

" Arrows Off
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Colorscheme
set background=dark
colorscheme Tomorrow-Night
highlight ColorColumn ctermbg=8
set t_Co=256
syntax on


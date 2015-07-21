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

" File changes
set autoread

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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Bundles here:"
" - Original Github Repos
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-dispatch'
Plugin 'chase/vim-ansible-yaml'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Auto-Pairs'
Plugin 'slim-template/vim-slim.git'
Plugin 'tpope/vim-haml'
Plugin 'mustache/vim-mustache-handlebars'

" - Vim-scripts Repos
Plugin 'YankRing.vim'
Plugin 'repeat.vim'
Plugin 'surround.vim'
Plugin 'nginx.vim'
Plugin 'rainbow_parentheses.vim'
Plugin 'Command-T'
Plugin 'preview'
Plugin 'csv.vim'
Plugin 'unimpaired.vim'
Plugin 'html5.vim'
Plugin 'rails.vim'

" - Non Github Repos
Plugin 'Syntastic'

" - Local Repos

call vundle#end()

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

" RSpec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "Dispatch rspec {spec}"

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


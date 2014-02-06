colorscheme codeschool

set guifont=Monaco:h13

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif

set lines=999 columns=999

highlight ColorColumn guibg=#2e373b
highlight SignColumn guibg=#21272c

nnoremap <leader>p :silent !open -a Marked.app '%:p'<cr>

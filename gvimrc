colorscheme codeschool

set guifont=Monaco:h13

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif

" colors.vim - all avaliable external colorschemes
"
if has('gui_vimr')
  set background=dark
  colorscheme onedark
  " set background=light
  " colorscheme hemisu
  " set guifont=Roboto\ Mono:h14
  " set linespace=2
else
  " set termguicolors
  set t_Co=256
  set background=light
  colorscheme hemisu
endif

" vim: set ft=vim:

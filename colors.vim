" colors.vim - all avaliable external colorschemes
"
if has('gui_vimr')
  set background=dark
  colorscheme onedark
  " set guifont=Roboto\ Mono:h14
  " set linespace=2
else
  set termguicolors
  " set t_Co=256
  set background=dark
  colorscheme dracula
endif

" vim: set ft=vim:

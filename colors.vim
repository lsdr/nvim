" colors.vim - all avaliable external colorschemes
"
if has('gui_vimr')
  set background=light
  colorscheme hemisu

  " set guifont=Roboto\ Mono:h14
  " set linespace=2
else
  "enable 256 colors on terminal"
  " set t_Co=256
  set termguicolors

  set background=light
  colorscheme hemisu
  " set background=dark
  " colorscheme gruvbox
endif

" vim: set ft=vim:

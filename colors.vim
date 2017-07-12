" colors.vim - all avaliable external colorschemes
"

if has('gui_running')
  set background=dark
  " colorscheme hemisu
  colorscheme gruvbox
else
  "enable 256 colors on terminal"
  set t_Co=256
  set background=dark
  colorscheme gruvbox
endif

" vim: set ft=vim:

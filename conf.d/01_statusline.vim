" statusline.vim - configure the statusline
"
" make command line two lines high (except on VimR)
if !has('gui_vimr')
  set cmdheight=2
endif

" make the status line more informative
set laststatus=2

Plug 'bling/vim-airline'
  let g:airline_powerline_fonts=0
  let g:airline_right_sep = ''
  let g:airline_left_sep  = ''

" vim: set ft=vim:

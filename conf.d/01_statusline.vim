" statusline.vim - configure the statusline
"
" make command line two lines high
set cmdheight=2

" make the status line more informative
set laststatus=2

Plug 'bling/vim-airline'
  let g:airline_powerline_fonts=0
  let g:airline_right_sep = ''
  let g:airline_left_sep  = ''

" vim: set ft=vim:

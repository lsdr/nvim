" statusline.vim - configure the statusline
"

" make the status line more informative
set laststatus=2
set cmdheight=2

Plug 'bling/vim-airline'
  let g:airline_powerline_fonts=0
  let g:airline_right_sep=''
  let g:airline_left_sep=''
  " integration with ale
  let g:airline#extensions#ale#enabled=1
  let airline#extensions#ale#error_symbol='E:'
  let airline#extensions#ale#warning_symbol='W:'

" vim: set ft=vim:

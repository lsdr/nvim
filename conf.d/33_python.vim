" support for python
"
Plug 'zchee/deoplete-jedi', { 'for': ['python'] }
Plug 'davidhalter/jedi-vim', { 'for': ['python'] }
  " disable autocompletion, use deoplete
  let g:jedi#completions_enabled=0
  " open the go-to function in split, not another buffer
  let g:jedi#use_splits_not_buffers='right'
  " Default mapping
  " <leader>d - go to definition
  " <leader>n - usage in current file
  " <leader>r - rename
  " K         - class/method docs

" vim: set ft=vim:

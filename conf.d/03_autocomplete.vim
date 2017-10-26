" autocomplete.vim - omni, code and auto complete settings
"
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Use deoplete, man
  let g:deoplete#enable_at_startup=1
  " use tab for completion
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"" autocomplete for vim 
Plug 'Shougo/neco-vim'

" enable syntax-based completion if lacking a better option
set omnifunc=syntaxcomplete#Complete
" no annoying preview/doc buffers
" set completeopt-=preview
" skip search includes for completion
" set complete-=i

" vim: set ft=vim:


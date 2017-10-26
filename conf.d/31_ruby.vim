" ruby.vim - support for Ruby
"
Plug 'vim-ruby/vim-ruby'
  let g:ruby_indent_block_style='do'
  let g:ruby_indent_assignment_style='variable'
  let g:rubycomplete_rails=1
  let g:rubycomplete_classes_in_global=1
  let g:rubycomplete_include_object=1
  let g:rubycomplete_include_objectspace=1
  let g:rubycomplete_use_bundler=1

Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'slim'] }

Plug 'tpope/vim-haml'
  autocmd BufNewFile,BufRead *.haml set ft=haml

Plug 'slim-template/vim-slim'
Plug 'sunaku/vim-ruby-minitest'

" ruby completion
autocmd FileType ruby set omnifunc=rubycomplete#Complete

" vim: set ft=vim:


" language support
" support for most commonly used proglang syntax and indentation

Plug 'sheerun/vim-polyglot'

"" ruby support (vim-ruby)
let g:ruby_indent_block_style='do'
let g:ruby_indent_assignment_style='variable'
let g:rubycomplete_rails=1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_include_object=1
let g:rubycomplete_include_objectspace=1
let g:rubycomplete_use_bundler=1

"" haskell support (neovimhaskell/haskell-vim)
" indent 'where' block two spaces under previous body
let g:haskell_indent_before_where=2
" allow a second case indent style (see haskell-vim README)
let g:haskell_indent_case_alternative=1
" only next under 'let' if there's an equals sign
let g:haskell_indent_let_no_in=0


" haskell.vim - support for Haskell
"
Plug 'neovimhaskell/haskell-vim'
  " Indent 'where' block two spaces under previous body
  let g:haskell_indent_before_where=2
  " Allow a second case indent style (see haskell-vim README)
  let g:haskell_indent_case_alternative=1
  " Only next under 'let' if there's an equals sign
  let g:haskell_indent_let_no_in=0


Plug 'alx741/vim-hindent'
  " no indent on save
  let g:hindent_on_save = 0


Plug 'eagletmt/ghcmod-vim'

augroup haskellStylish
  au!
  au FileType haskell nnoremap <leader>hi :Hindent<CR>
augroup END


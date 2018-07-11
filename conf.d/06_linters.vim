" linters.vim - setup for linters, syntax checkers and the like
"
Plug 'w0rp/ale'
  " enable airline integration
  let g:airline#extensions#ale#enabled=1
  " do not lint when editing, only on save/enter/normal-mode
  let g:ale_lint_on_text_changed='normal'
  " change sign column highlight
  let g:ale_change_sign_column_color=1
  " leave gutter always open
  let g:ale_sign_column_always=1
  " list of enabled linters:
  let g:ale_linters = {
  \   'elixir': ['credo', 'mix'],
  \   'elm': ['elm-format', 'elm-make'],
  \   'haskell': ['stack-ghc-mod', 'hlint'],
  \   'ruby': ['rubocop', 'ruby'],
  \   'python': ['flake8', 'pycodestyle', 'mypy', 'pylint'],
  \}


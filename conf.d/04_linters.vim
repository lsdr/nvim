" linters.vim - setup for linters, syntax checkers and the like
"
Plug 'w0rp/ale'
  " enable airline integration
  let g:airline#extensions#ale#enabled=1
  " do not lint when editing, only on save/enter
  let g:ale_lint_on_text_changed='never'
  " list of enabled linters:
  let g:ale_linters = {
  \   'haskel': ['stack-ghc-mod', 'hlint'],
  \   'ruby': ['rubocop', 'ruby'],
  \}


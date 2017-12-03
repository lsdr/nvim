" support for haskell tools, libs and stack stuff
"
Plug 'alx741/vim-hindent'
  " no indent on save
  let g:hindent_on_save = 0

augroup haskellStylish
  au!
  au FileType haskell nnoremap <leader>hi :Hindent<CR>
augroup END

Plug 'eagletmt/ghcmod-vim'

"" autocomplete for haskell
Plug 'eagletmt/neco-ghc' 
  " Disable haskell-vim omnifunc
  let g:haskellmode_completion_ghc=0
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" vim: set ft=vim:


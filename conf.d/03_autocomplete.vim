" autocomplete.vim - omni, code and auto complete settings
"
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Use deoplete, man
  let g:deoplete#enable_at_startup=1
  " use tab for completion
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

Plug 'Shougo/neco-vim'

Plug 'eagletmt/neco-ghc' 
  " Disable haskell-vim omnifunc
  let g:haskellmode_completion_ghc = 0
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc


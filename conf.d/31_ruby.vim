" support for ruby frameworks and whatnots 
"
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'slim'] }
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby', 'eruby'] }


" ruby completion
autocmd FileType ruby set omnifunc=rubycomplete#Complete

" vim: set ft=vim:


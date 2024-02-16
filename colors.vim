" colors.vim - all avaliable external colorschemes
"
if exists('g:neovide')
  " set background=dark
  colorscheme kanagawa-wave
  set guifont=CodeNewRoman\ Nerd\ Font\ Mono:h11
  set linespace=2
  let g:neovide_scale_factor = 1.0
  let g:neovide_cursor_animation_length = 0
  let g:neovide_fullscreen = v:true
else
  set termguicolors
  set background=dark
  colorscheme dracula
endif

" vim: set ft=vim:

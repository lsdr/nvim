"" first things first: mapping leader, textwidth and such
"
" setting <leader> to comma
let mapleader=','

" shift no longer required
nnoremap ; :

" set textwidth to 80 cols (oldschool here)
set textwidth=80

" set encoding to UTF-8 no matter what
set encoding=utf-8

" bootstrapping vim-plug
call plug#begin('~/.config/nvim/plugins')

" load plugin definition and extra configuration
runtime! conf.d/*.vim

" initialize plugin system
call plug#end()

" load colorscheme
runtime! colors.vim

" enable plugin/indentation based on filetype detection
filetype plugin indent on

" enable syntax highlight
syntax enable

" improving redrawing smoothness
set ttyfast
set lazyredraw

" interface and basic behavior
set nocompatible
set bs=2              " same as :set backspace=indent,eol,start
set mousehide
set nu
set nuw=5
set wrap
set hidden            " change buffer without saving
set ruler
set scrolloff=3       " lines above/below cursor
set history=750
set fileformats=unix,mac,dos
set cursorline
set autoread          " automatically reloads file if changed outside
set splitbelow        " split new window below current window
set splitright        " split new window right of the current one
set nojoinspaces      " use just one space to join strings
set formatoptions+=j  " delete comment when joining commented lines
set nostartofline     " do not move cursor back to start of line when moving

" if on mac, uses option-key as meta <M>; allow more key combos
if exists('+macmeta')
  set macmeta
endif

" tab/indentation configuration
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" tab completion
set wildmode=longest:full,full
set wildmenu
set wildignore+=*.o,*~,.lo,*.swp,*.pyc,.git,*.log,*.zip,*.so,*/tmp/*
set wildignore+=log/**,tmp/**,*DS_Store*,.hg

" search pattern highlight/incremental
set ignorecase
set smartcase
set infercase
set showmatch
set hlsearch
set incsearch

" backup and swap settings
set nobackup
set directory=~/.config/nvim/tmp

" enable the matchit.vim shipped with vim
runtime! macros/matchit.vim

" few useful shortcuts
command! Rehash source ~/.config/nvim/init.vim

" close current buffer
nmap <leader>x :close<cr>

" clear search highlights
nmap <silent>,/ :nohls<cr>

" make the arrow keys switch between splits
map <up>    <C-w>k
map <down>  <C-w>j
map <right> <C-w>l
map <left>  <C-w>h

" disable neovim python2/nodejs providers
let g:loaded_python_provider=1
let g:loaded_node_provider=1

" vim: set ft=vim:

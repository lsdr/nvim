" test runners and other language-agnostic test support frameworks
"
Plug 'janko-m/vim-test'
  let test#strategy = "neovim"
  nmap <silent> <leader>rt :TestFile<CR>
  nmap <silent> <leader>rn :TestNearest<CR>
  nmap <silent> <leader>ra :TestSuite<CR>
  nmap <silent> <leader>rl :TestLast<CR>
  nmap <silent> <leader>rg :TestVisit<CR>


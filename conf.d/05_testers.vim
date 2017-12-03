" test runners and other language-agnostic test support frameworks
"
Plug 'janko-m/vim-test'
  let test#strategy = "neovim"
  nmap <silent> <leader>rt :TestNearest<CR>
  nmap <silent> <leader>rf :TestFile<CR>
  nmap <silent> <leader>ra :TestSuite<CR>
  nmap <silent> <leader>rl :TestLast<CR>
  nmap <silent> <leader>rg :TestVisit<CR>


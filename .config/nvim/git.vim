" Show git status
nmap <leader>gs :vertical rightbelow :Git<CR>
" Git fetch all
nnoremap <leader>gF :Git fetch --all<CR>
" Git rebase current branch to origin/master
nnoremap <leader>grom :Git rebase origin/master<CR>
" Git rebase current branch to upstream/master
nnoremap <leader>grum :Git rebase upstream/master<CR>
" Git blame
nnoremap <Leader>gb :Git blame<CR>

nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

augroup fugitive_mappings
  autocmd!
  " Expand changes with tab 
  autocmd FileType fugitive nmap <buffer> <Tab> =
  " Enable spell check on git commit
  autocmd FileType gitcommit setlocal spell
  " Show git log 
  autocmd FileType fugitive nmap <buffer> l :Git log<CR>
  " Git commit with no-verify
  autocmd FileType fugitive nnoremap <buffer> <silent> cn :<C-U>Git commit --no-verify<CR>
  " Git amend commit with no-verify
  autocmd FileType fugitive nnoremap <buffer> <silent> can :<C-U>Git commit --amend --no-verify<CR>
  " Git push current branch to origin
  autocmd FileType fugitive nmap <buffer> p :Git push origin<CR>
  " Git force push current branch to origin
  autocmd FileType fugitive nmap <buffer> P :Git push origin --force<CR>
  " Git stash save with user input message
  autocmd FileType fugitive nmap <buffer> zz :execute '!git stash save -m "'.input('Enter message: ').'"'<cr>
  " Git stash pop
  autocmd FileType fugitive nmap <buffer> zp :Git stash pop<CR>
augroup END

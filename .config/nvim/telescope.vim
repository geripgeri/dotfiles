"Git related

"Show the git branches, use <c-s> to switch to the selected branch
nnoremap <leader>gc :lua require('telescope.builtin').git_branches()<CR>
"Show git stashes
nnoremap <leader>gz :lua require('telescope.builtin').git_stash()<CR>
" Show git controlled files
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>

" Find sting in files
nnoremap <leader>fg :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
" Show all files
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>
" Show buffers 
nnoremap <leader>fb :lua require('telescope.builtin').buffers()<CR>
" Show help tags
nnoremap <leader>fh :lua require('telescope.builtin').help_tags()<CR>

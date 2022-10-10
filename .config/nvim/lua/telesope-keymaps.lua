--Show the git branches, use <c-s> to switch to the selected branch
vim.api.nvim_set_keymap("n", "<Leader>gc", ":lua require('telescope.builtin').git_branches()<CR>", { noremap = true, silent = true })
--Show git stashes
vim.api.nvim_set_keymap("n", "<Leader>gz", ":lua require('telescope.builtin').git_stash()<CR>", { noremap = true, silent = true })
-- Show all files
vim.api.nvim_set_keymap("n", "<Leader>ff", ":lua require('telescope.builtin').find_files()<CR>", { noremap = true, silent = true })
-- Show help tags
vim.api.nvim_set_keymap("n", "<Leader>fh", ":lua require('telescope.builtin').help_tags()<CR>", { noremap = true, silent = true })
-- Show git controlled files
vim.api.nvim_set_keymap("n", "<C-p>", ":lua require('telescope.builtin').git_files()<CR>", { noremap = true, silent = true })
-- Find sting in files
vim.api.nvim_set_keymap("n", "<C-l>", ":lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })
-- Show buffers 
vim.api.nvim_set_keymap("n", "<C-b>", ":lua require('telescope.builtin').buffers()<CR>", { noremap = true, silent = true })
-- Show spell suggestions
vim.api.nvim_set_keymap("n", "<C-s>", ":lua require('telescope.builtin').spell_suggest()<CR>", { noremap = true, silent = true })

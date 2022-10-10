-- Show git status
vim.api.nvim_set_keymap("n", "<Leader>gs", ":vertical rightbelow :Git<CR>", { noremap = true, silent = true })

-- Git fetch all
vim.api.nvim_set_keymap("n", "<Leader>gf", ":Git fetch --all<CR>", { noremap = true, silent = true })

-- Git rebase current branch to origin/master
vim.api.nvim_set_keymap("n", "<Leader>grom", ":Git rebase origin/master<CR>", { noremap = true, silent = true })

-- Git rebase current branch to upstream/master
vim.api.nvim_set_keymap("n", "<Leader>grum", ":Git rebase upstream/master<CR>", { noremap = true, silent = true })

-- Git blame
vim.api.nvim_set_keymap("n", "<Leader>gb", ":Git blame<CR>", { noremap = true, silent = true })

-- Git diff accept left
-- BUG  `<Leader>gf is already in use in line :12
-- vim.api.nvim_set_keymap("n", "<Leader>gf", ":diffget //2<CR>", { noremap = true, silent = true })

-- Git diff accept right
vim.api.nvim_set_keymap("n", "<Leader>gj", ":diffget //3<CR>", { noremap = true, silent = true })

vim.api.nvim_create_augroup("fugitive_mappings", { clear = true })

-- Enable spell check on git commit
vim.api.nvim_create_autocmd("FileType", {
    group = "fugitive_mappings",
    pattern = "gitcommit",
    command = "setlocal spell",
})

-- Expand changes with tab
vim.api.nvim_create_autocmd("FileType", {
    group = "fugitive_mappings",
    pattern = "fugitive",
    command = "nmap <buffer> <Tab> =",
})

-- Show git log
vim.api.nvim_create_autocmd("FileType", {
    group = "fugitive_mappings",
    pattern = "fugitive",
    command = "nmap <buffer> l :Git log<CR>",
})

-- Git commit with no-verify
vim.api.nvim_create_autocmd("FileType", {
    group = "fugitive_mappings",
    pattern = "fugitive",
    command = "nnoremap <buffer> <silent> cn :<C-U>Git commit --no-verify<CR>",
})

-- Git amend commit with no-verify
vim.api.nvim_create_autocmd("FileType", {
    group = "fugitive_mappings",
    pattern = "fugitive",
    command = "nnoremap <buffer> <silent> cn :<C-U>Git commit --no-verify<CR>",
})

-- Git push current branch to origin
vim.api.nvim_create_autocmd("FileType", {
    group = "fugitive_mappings",
    pattern = "fugitive",
    command = "nmap <buffer> p :Git push origin<CR>",
})

-- Git force push current branch to origin
vim.api.nvim_create_autocmd("FileType", {
    group = "fugitive_mappings",
    pattern = "fugitive",
    command = "nmap <buffer> P :Git push origin --force<CR>",
})

-- Git stash save with user input message
vim.api.nvim_create_autocmd("FileType", {
    group = "fugitive_mappings",
    pattern = "fugitive",
    command = "nmap <buffer> zz :execute '!git stash save -m \"'.input('Enter message: ').'\"'<CR>",
})

-- Git stash pop
vim.api.nvim_create_autocmd("FileType", {
    group = "fugitive_mappings",
    pattern = "fugitive",
    command = "nmap <buffer> zp :Git stash pop<CR>",
})

-- Set Leader to space
vim.g.mapleader = " "

-- Reload nvim configuration.
vim.api.nvim_set_keymap("n", "<Leader><CR>", ":so ~/.config/nvim/init.lua<CR>", { noremap = true, silent = true })

-- Save current buffer
vim.api.nvim_set_keymap("n", "<Leader>w", ":w<CR>", { noremap = true, silent = true })

-- Toggle spell check
vim.api.nvim_set_keymap("n", "<Leader>s", ":set spell!<CR>", { noremap = true, silent = true })

-- Save current buffer as sudo
vim.api.nvim_set_keymap("n", "<Leader>W", ":w !sudo tee %<CR>", { noremap = true, silent = true })

-- Replace the word under cursor
vim.api.nvim_set_keymap("n", "<Leader>*", ":%s/<c-r><c-w>//g<left><left>", { noremap = true, silent = false })

-- Move lines around
vim.api.nvim_set_keymap("n", "<Leader>j", ":m+<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>k", ":m-2<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<Leader>j", ":m'>+<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<Leader>k", ":m-2<CR>gv=gv", { noremap = true, silent = true })

-- Tab to switch to next open buffer
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })

-- Shift + Tab to switch to previous open buffer
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })

-- Leader key twice to cycle between last two open buffers
vim.api.nvim_set_keymap("n", "<Leader><Leader>", "<c-^>", { noremap = true, silent = true })

-- Copy & Paste from the system clipboard
vim.opt.clipboard = "unnamedplus"

-- vim.api.nvim_set_keymap("n", "<Leader>p", "\"+p", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>P", "\"+P", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>y", "\"+y", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "<Leader>y", "\"+y", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Leader>Y", "\"+y$", { noremap = true, silent = true })

-- Keep the copy register while pasting
vim.api.nvim_set_keymap("x", "<Leader>p", "\"_dP", { noremap = true, silent = true })

-- Copy the whole buffer
vim.api.nvim_set_keymap("n", "<Leader>YY", "gg\"+yG<C-o>", { noremap = true, silent = true })

-- Press return to temporarily get out of the highlighted search.
vim.api.nvim_set_keymap("n", "<CR>", ":nohlsearch<CR><CR>", { noremap = true, silent = true })

-- NvimTree
-- Toggle
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Find current file
vim.api.nvim_set_keymap("n", "<C-f>", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })

-- Open/Close directories with Tab 
vim.api.nvim_create_autocmd("FileType", {
    pattern = "NvimTree",
    command = "nmap <buffer> <Tab> o",
})

-- Exit with qall
vim.api.nvim_set_keymap("n", "<Leader>q", ":qall<CR>", { noremap = true, silent = true })


-- Exit from terminal mode
vim.api.nvim_set_keymap("t", "<S-Tab>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Open new tab with terminal
vim.api.nvim_set_keymap("n", "<Leader>t", ":tabnew term://zsh | file Shell<CR>", { noremap = true, silent = true })


-- Automatically enter insert mode on new terminals

vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    command = "startinsert",
})

-- Butify jsons
vim.api.nvim_set_keymap("n", "<Leader>jq", ":%!jq<CR>", { noremap = true, silent = true })

-- Minify jsons
vim.api.nvim_set_keymap("n", "<Leader>Jq", ":%!jq -c<CR>", { noremap = true, silent = true })

-- Enable spell checking for mail filetype
vim.api.nvim_command('autocmd FileType mail setlocal spell')

-- Toggle Bionic reading
vim.api.nvim_set_keymap("n", "<Leader>b", ":FSToggle<CR>", { noremap = true, silent = false })

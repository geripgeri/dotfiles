vim.api.nvim_create_augroup("Linting", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    group = "Linting",
    pattern = "yaml.ansible",
    command = "setlocal errorformat=\"%f:%l: [%t%n] %m\"",
})

vim.api.nvim_create_autocmd("FileType", {
    group = "Linting",
    pattern = "yaml.ansible",
    command = "setlocal makeprg=ansible-lint",
})

vim.api.nvim_create_autocmd("BufWritePost", {
    group = "Linting",
    pattern = {"*.yaml", "*.yml"},
    command = "silent make! % | silent redraw!",
})

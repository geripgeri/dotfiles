-- Format files on save
vim.api.nvim_set_var("terraform_fmt_on_save", 1)

-- Set hcl files as terra filetype
-- BUG This is not working 🤔
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.hcl",
    command = "setfiletype terraform",
})

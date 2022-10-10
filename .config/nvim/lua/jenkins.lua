-- Set syntax for Jenkinsfile as Groovy
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead" }, {
    pattern = "Jenkinsfile",
    command = "setfiletype groovy",
})

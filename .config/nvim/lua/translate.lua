require("pantran").setup{
--  default_engine = "deepl"
}

local opts = {noremap = true, silent = true}
vim.keymap.set("n", "<leader>tr", require("pantran").motion_translate, opts)
vim.keymap.set("n", "<leader>trr", function() return require("pantran").motion_translate() .. "_" end, opts)
vim.keymap.set("x", "<leader>tr", require("pantran").motion_translate, opts)

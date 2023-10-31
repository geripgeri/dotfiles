-- Custom key bindings
require("keybindings")
-- Plugins
require("plugins")
-- Git
require("git-keymaps")
-- Web-dev-icons
require("web-devicons")
-- Nvim-tree
require("tree")
-- Statusbar
require("statusbar")
-- Neomake
require("neomake")
-- Telescope
require("telesope-keymaps")
-- LSP - Language Server Protocol
require("lsp")
-- Autocomplete
require("alma")
-- Terraform
require("terraform")
-- Todo Comments
require("todo")
-- Git signs
require("sings")
-- Colorizer
require("color")
-- Startpage
require("startpage")
-- Ansible
require("ansible")
-- Jenkins
require("jenkins")
-- Machine translate
require("translate")
-- Markdown preview
require("markdownpreview")
-- Work
require("work")

vim.cmd("syntax on")
vim.cmd("set termguicolors")
vim.cmd("set noswapfile")
vim.cmd("set nobackup")

-- Set sign colum, used by LSP & GitGutter  
vim.cmd("set signcolumn=yes")

vim.opt.encoding="utf8"
-- vim.opt.guifont="symbols nerd font 18"
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.incsearch= true
vim.opt.ignorecase= true
vim.opt.smartcase= true
vim.opt.undofile = true
vim.opt.undodir=vim.fn.expand("~/.config/nvim/undodir")

-- Start scrolling the screen when the cursor is 8 lines away.
vim.opt.scrolloff=8
-- Hide messages like `E37: No write since last change` while :bnext
vim.opt.hidden = true
-- Spell languages
vim.opt.spelllang="en,hu"

vim.opt.mouse="a"

-- The BEST theme ever
vim.cmd [[ colorscheme gruvbox ]]
vim.opt.background="dark"

-- Set zsh as default shell
vim.api.nvim_set_var("&shell", "/bin/zsh -i")

-- Highlight search but not when sourcing .vimrc
vim.opt.hls = true
vim.api.nvim_set_var("@/", " ")

-- Show the status line always and ONLY the last window
vim.opt.laststatus=3
vim.cmd "highlight ColorColumn ctermbg=0 guibg=lightgrey"

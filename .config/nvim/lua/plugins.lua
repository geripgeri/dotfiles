-- Automatically install packer at the first startup
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Git integration
  use 'tpope/vim-fugitive'

  -- Git status in the sign column
  use 'lewis6991/gitsigns.nvim'

  -- vim-surround
  use 'tpope/vim-surround'

  -- Undotree
  use 'mbbill/undotree'

  -- The one and only gruvbox
  use 'gruvbox-community/gruvbox'

  -- Statusbar
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Neomake
  use 'neomake/neomake'

  -- Telescope requirements
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-treesitter/nvim-treesitter'

  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'

  use 'theprimeagen/vim-be-good'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'prabirshrestha/vim-lsp'

  -- Autocomplete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-calc'
  use 'hrsh7th/cmp-emoji'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'
  use 'tamago324/cmp-zsh'
  use 'f3fora/cmp-spell'
  use 'saadparwaiz1/cmp_luasnip'

  -- Lua Snip
  use 'L3MON4D3/LuaSnip'

  -- Comparators
  use 'lukas-reineke/cmp-under-comparator'

  -- Terraform related
  use 'hashivim/vim-terraform'
  use 'prabirshrestha/async.vim'
  use 'prabirshrestha/asyncomplete.vim'
  use 'prabirshrestha/asyncomplete-lsp.vim'

  -- Ansible
  use 'pearofducks/ansible-vim'

  -- Cheat.sh
  use 'dbeniamine/cheat.sh-vim'

  -- Todo Comments
  use 'folke/trouble.nvim'
  use 'folke/todo-comments.nvim'

  -- Startup
  use 'startup-nvim/startup.nvim'

  -- Tetris
  use 'alec-gibson/nvim-tetris'

  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- Draw ASCII diagrams in Neovim.
  use 'jbyuki/venn.nvim'

  -- Machine translation
  use "potamides/pantran.nvim"

  -- Markdown preview
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- Check and install packer
  if packer_bootstrap then
      require('packer').sync()
  end
end)

" auto-install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim  --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

" Plugins
call plug#begin('~/.local/share/nvim/site/autoload/plugged')

" Git integration
Plug 'tpope/vim-fugitive'
" Git status in the sign column
Plug 'airblade/vim-gitgutter'

" Undotree
Plug 'mbbill/undotree'

" The one and only gruvbox
Plug 'gruvbox-community/gruvbox'

" Statusbar
Plug 'hoob3rt/lualine.nvim'

" Neomake
Plug 'neomake/neomake'

" Telescope requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'ryanoasis/vim-devicons'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'theprimeagen/vim-be-good'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'prabirshrestha/vim-lsp'

" Autocomplete
Plug 'hrsh7th/nvim-compe'

" Terraform related
Plug 'hashivim/vim-terraform'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Ansible
Plug 'pearofducks/ansible-vim'

" Cheat.sh
Plug 'dbeniamine/cheat.sh-vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
"Plug 'nvim-lua/completion-nvim'
  \| endif

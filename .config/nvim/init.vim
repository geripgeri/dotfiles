" Custom key bindings
source ~/.config/nvim/keybindings.vim
" Plugins
source ~/.config/nvim/plugins.vim
" Git
source ~/.config/nvim/git.vim
" Statusbar
lua require('statusbar')
" Neomake
source ~/.config/nvim/neomake.vim
" Telescope
source ~/.config/nvim/telescope.vim
" LSP - Language Server Protocol
lua require('lsp')
" Autocomplete
source ~/.config/nvim/autocomplete.vim
" Terraform
source ~/.config/nvim/terraform.vim

syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set number relativenumber 
set incsearch
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set termguicolors
" Start scrolling the screen when the cursor is 8 lines away.
set scrolloff=8
" Hide messages like `E37: No write since last change` while :bnext
set hidden
" Set sign colum, used by LSP & GitGutter  
set signcolumn=yes
" Spell languages
set spelllang=en,hu
" Show vertical line at 80 character line
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" The BEST theme ever
colorscheme gruvbox
set background=dark

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Higlight search but not when sourcing .vimrc
set hls
let @/ = ""

" NERDTree show hidden files
let NERDTreeShowHidden=1

" Automatically create the parent folder of the file (recursively)
augroup Mkdir
  autocmd!
  autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")
augroup END

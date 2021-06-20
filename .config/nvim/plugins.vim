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
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
"Plug 'nvim-lua/completion-nvim'
  \| endif

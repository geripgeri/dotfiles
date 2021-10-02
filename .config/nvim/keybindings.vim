" Set leader to space
let mapleader = " "

" Save current buffer
nnoremap <leader>w :w<cr>

" Save current buffer as sudo
nnoremap <leader>W :w !sudo tee %<cr>

" Replace the word under cursor
nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>

" Reload nvim configuration.
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

" Autoclose tags
" Temporarily disabled, most probably I'll use tpope' vim-surround plugin.
"inoremap ( ()<Left>
"inoremap { {}<Left>
"inoremap [ []<Left>
"inoremap < <><Left>
"inoremap " ""<Left>

" Move lines around
nnoremap <leader>j :m+<cr>==
nnoremap <leader>k :m-2<cr>==
xnoremap <leader>k :m-2<cr>gv=gv
xnoremap <leader>j :m'>+<cr>gv=gv

" Tab to switch to next open buffer
nnoremap <Tab> :bnext<cr>
" Shift + Tab to switch to previous open buffer
nnoremap <S-Tab> :bprevious<cr>
" leader key twice to cycle between last two open buffers
nnoremap <leader><leader> <c-^>

" Copy & Paste from the system clipboard
set clipboard=unnamed
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+y$

" Copy the whole buffer
nnoremap <leader>YY gg"+yG<C-o>
" Press return to temporarily get out of the highlighted search.
nnoremap <CR> :nohlsearch<CR><CR>

" Toggle spell check
nnoremap <leader>s :set spell!<cr>

" NERDTree
" Toggle
"nnoremap <C-n> :NERDTreeToggle %<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
" Find current file
nnoremap <C-f> :NERDTreeFind<CR>
" Open/Close directories with Tab 
autocmd FileType nerdtree nmap <buffer> <Tab> o
" Auto close NERDTree if it is the only left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Bookmark file/folder
nnoremap <leader>nb :Bookmark<CR>
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Set leader to space
let mapleader = " "

" Reload nvim configuration.
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

" Copy & Paste from the system clipboard
set clipboard=unnamed
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+y$

" Press return to temporarily get out of the highlighted search.
nnoremap <CR> :nohlsearch<CR><CR>

" Toggle spell check
nnoremap <leader>s :set spell!<cr>

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

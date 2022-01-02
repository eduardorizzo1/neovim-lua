" ctrl+s to save
nnoremap <c-s> :w <CR>
inoremap <c-s> <Esc> :w <CR>l
vnoremap <c-s> <Esc> :w <CR>

" ctrl+z
nnoremap <c-z> :u<CR>
inoremap <c-z> <c-o>:u<CR>

" ctrl+q
nnoremap <c-q> :q<CR>

" Delete withoud copy
vnoremap D "_d 

" Toggle highlight match word
nnoremap <leader>* :noh<CR>

" Toggle number relative
nnoremap <leader>n :set relativenumber!<CR>

" Navegation windows
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" Lualine
nnoremap <M-l> :bn<cr>
nnoremap <M-h> :bp<cr>
nnoremap <M-x> :bp \|bd #<cr>

" IndentLine
map <c-k>i :IndentBlanklineToggle <CR>

" Twilight
map <c-k>z :Twilight <cr>

" Nvimtree
map <C-b> :NvimTreeToggle<CR>

" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" ctrl+s to save
nnoremap <c-s> :w <CR>
inoremap <c-s> <Esc> :w <CR>l
vnoremap <c-s> <Esc> :w <CR>

" Navegation windows
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" Lualine
nnoremap <M-l> :bn<cr>
nnoremap <M-h> :bp<cr>
nnoremap <A-x> :bp \|bd #<cr>

" IndentLine
map <c-k>i : IndentLinesToggle<cr>

" Nvimlua-Tree
map <C-b> :NvimTreeToggle<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
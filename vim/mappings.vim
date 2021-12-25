" ctrl+s to save
nnoremap <c-s> :w <CR>
inoremap <c-s> <Esc> :w <CR>l
vnoremap <c-s> <Esc> :w <CR>

" ctrl+z
nnoremap <c-z> :u<CR>
inoremap <c-z> <c-o>:u<CR>

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
map <c-k>i :IndentLinesToggle<cr>

" Nvimtree
map <C-b> :NvimTreeToggle<CR>

" Lsp 
nnoremap <silent>ff <cmd>lua vim.lsp.buf.formatting()<CR>
autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()

" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

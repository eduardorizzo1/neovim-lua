" ctrl+s to save
nnoremap <c-s> :w <CR>
inoremap <c-s> <Esc> :w <CR>l
vnoremap <c-s> <Esc> :w <CR>

" Lualine
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <A-x> :bp \|bd #<cr>

" IndentLine
map <c-k>i : IndentLinesToggle<cr>

" NERDTree
map <C-b> :NERDTreeToggle<CR>

" terminal toggle
map <c-t> :bel term ++rows=8<CR>

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
nnoremap <M-x> :bp \|bd #<cr>

" IndentLine
map <c-k>i : IndentLinesToggle<cr>

" Nvimtree
map <C-b> :NvimTreeToggle<CR>

" Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

let g:term_buf = 0
function! Term_toggle()
  1wincmd w
  if g:term_buf == bufnr("")
    setlocal bufhidden=hide
    close
  else
    topleft vnew
    try
      exec "buffer ".g:term_buf
    catch
      call termopen("bash", {"detach": 0})
      let g:term_buf = bufnr("")
    endtry
    startinsert!
  endif
endfunction
nnoremap <f4> :call Term_toggle()<cr>

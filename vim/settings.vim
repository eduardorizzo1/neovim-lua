syntax enable
filetype plugin indent on
colorscheme NeoSolarized

set number
set relativenumber
set mouse=a
set history=5000
set clipboard+=unnamedplus
set encoding=utf8
set autoindent
set smartindent
set incsearch
set shiftwidth=2
set fillchars=vert:\│
set termguicolors
set background=dark
set cursorline

hi CursorLine guibg=NONE
hi CursorLineNR cterm=bold

if (has("nvim"))
  hi Normal guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
  hi NvimTreeNormal guibg=NONE
  hi CursorLine guibg=NONE
endif

" Vim-multiple-cursors
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" IndentLine
let g:indentLine_enabled=0
let g:indentLine_color_gui="#31363F"
let g:indentLine_char='c'
let g:indentLine_char_list=['┊']

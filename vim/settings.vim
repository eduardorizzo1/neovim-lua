syntax enable
filetype plugin indent on
colorscheme dracula

let mapleader = ","
set number
set relativenumber
set cursorline
set autoindent
set smartindent
set incsearch
set termguicolors
set mouse=a
set background=dark
set history=5000
set clipboard+=unnamedplus
set encoding=utf8
set tabstop=2
set shiftwidth=2
set fillchars=vert:\│
set foldmethod=indent
set nofoldenable
" set omnifunc=syntaxcomplete#Complete

hi CursorLine guibg=NONE
hi CursorLineNR cterm=bold guifg=#fff gui=bold

hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi NvimTreeNormal guibg=NONE
hi CursorLine guibg=NONE
hi SignColumn guibg=NONE
  " hi Pmenu ctermbg=none guibg=none

" Dracula theme
let g:dracula_show_end_of_buffer=1
let g:dracula_transparent_bg=1
let g:dracula_lualine_bg_color="#000"
let g:dracula_italic=0

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType * exe "normal zR"

" Vim-multiple-cursors
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" IndentBlankLine
let g:indent_blankline_enabled=v:true
let g:indent_blankline_use_treesitter=v:true
hi IndentBlanklineChar guifg=#282a36 gui=nocombine
hi IndentBlanklineContextChar guifg=#6272a4 gui=nocombine

" NvimTree
hi NvimTreeVertSplit guibg=none

" Prettier
let g:prettier#autoformat=1
let g:prettier#autoformat_config_present=1
let g:prettier#autoformat_config_files=[".prettierrc"]
let g:prettier#exec_cmd_async=1


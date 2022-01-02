syntax enable
filetype plugin indent on
colorscheme dracula

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

hi CursorLine guibg=NONE
hi CursorLineNR cterm=bold guifg=#f1fa8c gui=bold

if (has("nvim"))
  hi Normal guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
  hi NvimTreeNormal guibg=NONE
  hi CursorLine guibg=NONE
  " hi Pmenu ctermbg=none guibg=none
endif

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

" IndentLine
let g:indentLine_enabled=0
" let g:indentLine_color_gui="#31363F"
let g:indent_setColors=0
let g:indentLine_char='c'
let g:indentLine_char_list=['┊']

" Prettier
let g:prettier#autoformat=1
let g:prettier#autoformat_config_present=1
let g:prettier#autoformat_config_files=[".prettierrc"]
let g:prettier#exec_cmd_async=1

" Nvim-ts-rainbow
hi rainbowcol1 guifg=#8be9fd
hi rainbowcol2 guifg=#bd93f9
hi rainbowcol3 guifg=Yellow
hi rainbowcol4 guifg=#8be9fd
hi rainbowcol5 guifg=#bd93f9
hi rainbowcol6 guifg=Yellow

" autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
" let HlUnderCursor=1

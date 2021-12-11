set number
set relativenumber
set mouse=a
set history=5000
set clipboard+=unnamedplus
set encoding=UTF-8
set autoindent
set smartindent
set incsearch
set shiftwidth=2
set fillchars=vert:\│
" set termguicolors
" set cursorline
" set foldcolumn=0
set background=dark

syntax enable
filetype plugin indent on
colorscheme dracula

let g:dracula_show_end_of_buffer = 1
" use transparent background
let g:dracula_transparent_bg = 1
" set custom lualine background color
let g:dracula_lualine_bg_color = "#44475a"
let g:dracula_italic=0

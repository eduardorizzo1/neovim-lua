syntax enable
filetype plugin indent on
colorscheme dracula

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
" set filetypes as typescriptreact
" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

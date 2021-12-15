call plug#begin('~/.vim/plugged')

  " Dev
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'mxw/vim-jsx'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'peitalin/vim-jsx-typescript'

  " Others
  Plug 'jiangmiao/auto-pairs'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'dense-analysis/ale'
  Plug 'sheerun/vim-polyglot'

  " Themes
  Plug 'Mofiqul/dracula.nvim'
  Plug 'kyoz/purify', { 'rtp': 'vim' }
  Plug 'icymind/neosolarized'
  Plug 'arcticicestudio/nord'
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/gruvbox-material'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'koirand/tokyo-metro.vim'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'jschmold/sweet-dark.vim'
  Plug 'sickill/vim-monokai'
  Plug 'joshdick/onedark.vim'

  " Coc.nvim
  Plug 'neoclide/coc.nvim', {'branch': 'release'}


  " Lua
  Plug 'akinsho/bufferline.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

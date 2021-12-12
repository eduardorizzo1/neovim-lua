call plug#begin('~/.vim/plugged')

  " Dev
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'jiangmiao/auto-pairs'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'Yggdroot/indentLine'
  " Javascript
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'sheerun/vim-polyglot'
  " Typescript

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

  " NerdTree
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'ryanoasis/vim-webdevicons'
  Plug 'xuyuanp/nerdtree-git-plugin'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  
  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " Lua
  Plug 'akinsho/bufferline.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'

  " Fuzzy Finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

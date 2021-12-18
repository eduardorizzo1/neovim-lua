call plug#begin('~/.vim/plugged')
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

  " Dashboard
  Plug 'glepnir/dashboard-nvim'
  Plug 'liuchengxu/vim-clap'

  " Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " FZF
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  " Others
  Plug 'jiangmiao/auto-pairs'
  Plug 'Yggdroot/indentLine'

  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

  " LSP
  Plug 'neovim/nvim-lspconfig'

  " Lua
  Plug 'akinsho/bufferline.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'karb94/neoscroll.nvim'
  Plug 'nvim-lua/completion-nvim'
call plug#end()

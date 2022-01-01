call plug#begin('~/.vim/plugged')
  " Themes
  Plug 'dracula/vim', { 'as': 'dracula' }
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

  " Others
  Plug 'jiangmiao/auto-pairs'
	Plug 'Yggdroot/indentLine'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'rafamadriz/friendly-snippets'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
	Plug 'p00f/nvim-ts-rainbow'

  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'onsails/lspkind-nvim'
  Plug 'ray-x/lsp_signature.nvim'
	Plug 'glepnir/lspsaga.nvim'

  " Lua
  Plug 'akinsho/bufferline.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'karb94/neoscroll.nvim'
  Plug 'l3mon4d3/luasnip'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

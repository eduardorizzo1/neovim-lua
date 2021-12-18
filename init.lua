local cmd = vim.cmd

cmd('source $HOME/.config/nvim/vim/init.vim')

require('plugins/bufferline')
require('plugins/lualine')
require('plugins/nvimtree')
require('plugins/treesitter')

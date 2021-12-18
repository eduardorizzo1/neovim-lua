local cmd = vim.cmd

cmd('source $HOME/.config/nvim/vim/plugins.vim')
cmd('source $HOME/.config/nvim/vim/settings.vim')
cmd('source $HOME/.config/nvim/vim/mappings.vim')
cmd('source $HOME/.config/nvim/vim/develop.vim')
cmd('source $HOME/.config/nvim/vim/indentline.vim')
cmd('source $HOME/.config/nvim/vim/themes.vim')

require('plugins/bufferline')
require('plugins/lualine')
require('plugins/nvimtree')
require('plugins/treesitter')

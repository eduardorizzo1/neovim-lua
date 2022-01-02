vim.cmd('source $HOME/.config/nvim/vim/init.vim')

require('plugins/neoscroll')
require'colorizer'.setup()
require('plugins/lualine')
require('plugins/bufferline')
require('plugins/nvimtree')
require('plugins/telescope')
require('plugins/treesitter')
require('plugins/luasnip')
require('plugins/cmp')
require('plugins/lsp')
require('plugins/dashboard')

vim.cmd('source $HOME/.config/nvim/vim/settings.vim')

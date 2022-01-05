vim.cmd('source $HOME/.config/nvim/vim/plugins.vim')
vim.cmd('source $HOME/.config/nvim/vim/settings.vim')
vim.cmd('source $HOME/.config/nvim/vim/mappings.vim')
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
require('plugins/indent_blankline')
require('plugins/dashboard')
vim.cmd('source $HOME/.config/nvim/vim/settings.vim')


vim.g.dracula_show_end_of_buffer = true
-- use transparent background
vim.g.dracula_transparent_bg = true
-- set custom lualine background color
vim.g.dracula_lualine_bg_color = "#0b001f"

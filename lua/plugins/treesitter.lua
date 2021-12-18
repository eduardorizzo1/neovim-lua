
require"nvim-treesitter.configs".setup {
  highlight = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "json",
    "html",
    "scss",
    "typescript",
    "javascript",
    "vim",
    "lua",
    "css"
  }
}


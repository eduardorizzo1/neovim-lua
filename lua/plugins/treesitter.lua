require"nvim-treesitter.configs".setup {
  highlight = {
    enable = true,
    disable = {},
		additional_vim_regex_highlighting = true,
  },
  ensure_installed = "maintained",
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
}

local parser_config = require'nvim-treesitter.parsers'.get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }


	-- {
  --   "tsx",
  --   "json",
  --   "html",
  --   "scss",
  --   "typescript",
  --   "javascript",
  --   "vim",
  --   "lua",
  --   "css"
  -- },

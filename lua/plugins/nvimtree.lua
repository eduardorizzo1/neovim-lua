local nvimtree = require"nvim-tree"
local g = vim.g

g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
g.nvim_tree_git_hl = git_status
g.nvim_tree_highlight_opened_files = 0
g.nvim_tree_indent_markers = 1
g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }

g.nvim_tree_window_picker_exclude = {
   filetype = { "notify", "packer", "qf", "telescope" },
   buftype = { "terminal" },
}

g.nvim_tree_show_icons = {
   folders = 1,
   files = 1,
   git = git_status,
}

g.nvim_tree_icons = {
   default = "",
   symlink = "",
   git = {
      deleted = "",
      ignored = "◌",
      renamed = "➜",
      staged = "✓",
      unmerged = "",
      unstaged = "✗",
      untracked = "★",
   },
   folder = {
      default = " ",
      empty = " ",
      empty_open = " ",
      -- open = " ",
			open = " ",
      -- opened = "",
			-- open = "",
      symlink = " ",
      symlink_open = " ",
   },
}

nvimtree.setup {
   filters = {
      dotfiles = false,
   },
   disable_netrw = true,
   hijack_netrw = true,
   ignore_ft_on_setup = { "dashboard" },
   auto_close = false,
   open_on_tab = false,
   hijack_cursor = true,
   update_cwd = true,
   update_focused_file = {
      enable = true,
      update_cwd = false,
   },
	 view = {
	   width = 30,
	   height = 30,
	   hide_root_folder = false,
	   side = 'left',
	   auto_resize = true,
	   mappings = {
	     custom_only = false,
	     list = {}
	   },
	   number = false,
	   relativenumber = false
	 },
   git = {
      ignore = false,
   },
   diagnostics = {
     enable = false,
     icons = {
       hint = "",
       info = "",
       warning = "",
       error = "",
     }
   },
}







-- require'nvim-tree'.setup {
--   disable_netrw       = true,
--   hijack_netrw        = true,
--   open_on_setup       = false,
--   ignore_ft_on_setup  = {},
--   auto_close          = false,
--   open_on_tab         = false,
--   hijack_cursor       = false,
--   update_cwd          = false,
--   update_to_buf_dir   = {
--     enable = true,
--     auto_open = true,
--   },
-- 
-- 
-- 
--   update_focused_file = {
--     enable      = false,
--     update_cwd  = false,
--     ignore_list = {}
--   },
-- 
--   system_open = {
--     cmd  = nil,
--     args = {}
--   },
-- 
--   filters = {
--     dotfiles = false,
--     custom = {}
--   },
-- 
--   git = {
--     enable = true,
--     ignore = true,
--     timeout = 500, 
--   },
-- 
--   view = {
--     width = 30,
--     height = 30,
--     hide_root_folder = false,
--     side = 'left',
--     auto_resize = true,
--     mappings = {
--       custom_only = false,
--       list = {}
--     },
--     number = false,
--     relativenumber = false
--   },
-- 
--   trash = {
--     cmd = "trash",
--     require_confirm = true
--   },
-- }

-- vim.api.nvim_exec([[
--     augroup NvimTreeOptions
--         autocmd BufEnter NvimTree set cursorline guibg=LightGray
--     augroup END
--    ]], false)

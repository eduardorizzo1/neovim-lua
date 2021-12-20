local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      n = {
	["q"] = actions.close
      },
    },
    file_ignore_patterns = {
      "node_modules"
    },
  }
}

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end


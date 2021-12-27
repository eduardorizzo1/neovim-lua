require('bufferline').setup{
options = {
    view = "multiwindow",
    separator_style = 'thin',
    buffer_close_icon = "",
    modified_icon = "",
    show_close_icon = true,
    close_icon = "",
    show_buffer_close_icons = true,
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 15,
    tab_size = 20,
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    show_tab_indicators = true,
    diagnostic = 'nvim_lsp',
    
		diagnostics_indicator = function(count, level, diagnostics_dict)
      return "("..count..")"
    end,
    
		offsets = {
      { 
				filetype = "NvimTree", 
				text = '◀️ 🔍 💀 🧛 👻 🥷 👀 🔎 ▶️',
				text_align = "center",
				highlight = "Directory"
      }
    },
    
		custom_filter = function(buf_number)
       -- Func to filter out our managed/persistent split terms
       local present_type, type = pcall(function()
          return vim.api.nvim_buf_get_var(buf_number, "term_type")
       end)

       if present_type then
          if type == "vert" then
             return false
          elseif type == "hori" then
             return false
          end
          return true
       end

       return true
    end,
  }

}

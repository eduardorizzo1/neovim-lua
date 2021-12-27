require('bufferline').setup{
	options = {
    view = "multiwindow",
    separator_style = { "", "" },
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
    show_tab_indicators = false,
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
  },


	highlights = {
		-- background = {
		-- 	guifg = "#44475A",
		-- 	guibg = "#191A21",
		-- },

		buffer_selected = {
			guifg = "#8BE9FD",
			guibg = "#21222C",
			gui = "bold",
		},
		
		close_button_selected = {
			guifg = "#8BE9FD",
			guibg = "#21222C",
		},
		
		separator_selected = {
    	guifg = "#21222C",
      guibg = "#21222C",
    },

		indicator_selected = {
    	guifg = "#191A21",
      guibg = "#21222C",
    },
		
		tab_selected = {
			guifg = "#191A21",
			guibg = "#21222C",
		},

		modified_selected = {
    	guifg = "#F1FA8C",
      guibg = "#191A21",
    },
		-- fill = {
    -- 	guifg = "#191A21",
    --   guibg = "#21222C",
    -- },

		separator = {
			guifg = "#ABB2BF",
			guibg = "#ABB2BF",
		},

		separator_visible = {
			guifg = "#ABB2BF",
			guibg = "#ABB2BF",
		},

		tab = {
			guifg = "#191A21",
			guibg = "#191A21",
		},

		tab_close = {
			guifg = "#191A21",
			guibg = "#191A21",
		},

		modified = {
			guifg = "#F1FA8C",
			guibg = "#191A21",
    },

	}

}

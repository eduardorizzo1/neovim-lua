require('bufferline').setup{
  options = {
    separator_style = 'thin',
    show_tab_indicator = true,
    max_prefix_length = 15,
    view = 'default',
    diagnostic = 'nvim_lsp',
    diagnostics_indicator = function(count, level, diagnostics_dict)
      return "("..count..")"
    end
  }
}

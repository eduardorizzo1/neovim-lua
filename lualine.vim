lua << END
  require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {},
}
END

" show the '~' characters after the end of buffers
let g:dracula_show_end_of_buffer = 1
" use transparent background
let g:dracula_transparent_bg = 1
" set custom lualine background color
let g:dracula_lualine_bg_color = "#44475a"
let g:dracula_italic=0


lua << END
  require('bufferline').setup{}
END

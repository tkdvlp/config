require("lualine").setup {
    options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {
                 {'diagnostics',
                 sources = { 'nvim_lsp', 'nvim_diagnostic' },
                 sections = { 'error', 'warn', 'info', 'hint' },

                 diagnostics_color = {
                   error = 'DiagnosticError',
                   warn  = 'DiagnosticWarn',
                   info  = 'DiagnosticInfo',
                   hint  = 'DiagnosticHint',
                 },

                 symbols = {
                   error = '',
                   warn = '',
                   info = '',
                   hint = '',
                 },

                 colored = true,
                 update_in_insert = false,
                 always_visible = false,
      }
    },
    lualine_d = {'filename'},
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
  extensions = {}
}

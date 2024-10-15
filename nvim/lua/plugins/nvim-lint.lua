return {
  {
    'mfussenegger/nvim-lint',
    config = function()
      local lint = require('lint')
      lint.linters_by_ft = {
        lua = { 'eslint_d' },
        -- python = { "pyright" },
        -- You can customize some of the format options for the filetype (:help conform.format)
        -- rust = { "rustfmt", lsp_format = "fallback" },
        -- Conform will run the first available formatter
        graphql = { 'eslint_d' },
        markdown = { 'eslint_d' },
        typescript = { 'eslint_d' },
        javascript = { 'eslint_d' },
        svelte = { 'eslint_d' },
      }
    end,
  },
}

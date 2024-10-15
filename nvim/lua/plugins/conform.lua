return {
  {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local conform = require('conform')
      conform.setup({
        log_level = vim.log.levels.DEBUG,
        formatters_by_ft = {
          lua = { 'stylua' },
          -- python = { "pyright" },
          -- You can customize some of the format options for the filetype (:help conform.format)
          -- rust = { "rustfmt", lsp_format = "fallback" },
          -- Conform will run the first available formatter
          css = { 'prettierd', 'prettier' },
          graphql = { 'prettierd', 'prettier' },
          html = { 'prettierd', 'prettier' },
          json = { 'prettierd', 'prettier' },
          jsonc = { 'prettierd', 'prettier' },
          less = { 'prettierd', 'prettier' },
          markdown = { 'prettierd', 'prettier' },
          scss = { 'prettierd', 'prettier' },
          sh = { 'prettierd', 'prettier' },
          zsh = { 'prettierd', 'prettier' },
          typescript = { 'prettierd', 'prettier' },
          yaml = { 'prettierd', 'prettier' },
          javascript = { 'prettierd', 'prettier' },
          svelte = { 'prettierd', 'prettier' },
          toml = { 'prettierd', 'prettier' },
        },
      })
    end,
  },
}

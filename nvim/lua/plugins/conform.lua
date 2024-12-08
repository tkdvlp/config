return {
  {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local conform = require('conform')
      local js_formatters = { { 'biome', 'prettierd', 'prettier' } }
      conform.setup({
        log_level = vim.log.levels.DEBUG,
        formatters_by_ft = {
          javascript = js_formatters,
          javascriptreact = js_formatters,
          typescript = js_formatters,
          typescriptreact = js_formatters,
          svelte = js_formatters,
          json = js_formatters,
          jsonc = js_formatters,
          scss = js_formatters,
          graphql = js_formatters,
          css = js_formatters,
          html = { 'prettierd', 'prettier' },
          less = { 'prettierd', 'prettier' },
          markdown = { 'prettierd', 'prettier' },
          lua = { 'stylua' },
          python = { 'yapf' },
          sh = { 'prettierd', 'prettier' },
          zsh = { 'prettierd', 'prettier' },
          yaml = { 'prettierd', 'prettier' },
          toml = { 'prettierd', 'prettier' },
        },
      })
    end,
  },
}

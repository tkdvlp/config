return {
  {
    'mfussenegger/nvim-lint',
    config = function()
      local lint = require('lint')
      local js_linters = { { 'biome', 'eslint_d' } }
      lint.linters_by_ft = {
        typescript = js_linters,
        javascript = js_linters,
        javascriptreact = js_linters,
        typescriptreact = js_linters,
        jsx = js_linters,
        tsx = js_linters,
        svelte = js_linters,
        graphql = js_linters,
        json = js_linters,
        jsonc = js_linters,
        css = js_linters,
        markdown = { 'markdownlint', 'cspell' },
        lua = { 'cspell' },
        python = { 'pylint' },
        sh = { 'shellcheck', 'cspell' },
      }
    end,
  },
}

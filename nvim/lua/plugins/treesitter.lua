return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local configs = require('nvim-treesitter.configs')

      configs.setup({
        ensure_installed = {
          'awk',
          'bash',
          'cmake',
          'comment',
          'css',
          'csv',
          'dockerfile',
          'fish',
          'git_config',
          'git_rebase',
          'gitattributes',
          'gitcommit',
          'gitignore',
          'graphql',
          'html',
          'http',
          'java',
          'javascript',
          'jsdoc',
          'json',
          'lua',
          'make',
          'nginx',
          'php',
          'python',
          'scss',
          'sql',
          'ssh_config',
          'toml',
          'typescript',
          'vim',
          'vue',
          'xml',
          'yaml',
        },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}

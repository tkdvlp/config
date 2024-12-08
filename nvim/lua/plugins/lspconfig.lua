return {
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      local lspconfig = require('lspconfig')

      -- lua_ls
      lspconfig.lua_ls.setup({
        on_init = function(client)
          local path = client.workspace_folders[1].name
          if not vim.loop.fs_stat(path .. '/.luarc.json') and not vim.loop.fs_stat(path .. '/.luarc.jsonc') then
            client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
              Lua = {
                runtime = {
                  -- Tell the language server which version of Lua you're using
                  -- (most likely LuaJIT in the case of Neovim)
                  version = 'LuaJIT',
                },
                -- Make the server aware of Neovim runtime files
                workspace = {
                  checkThirdParty = false,
                  library = {
                    vim.env.VIMRUNTIME,
                  },
                  -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                  -- library = vim.api.nvim_get_runtime_file("", true)
                },
              },
            })

            client.notify('workspace/didChangeConfiguration', { settings = client.config.settings })
          end
        end,
      })

      -- svelte-language-server
      lspconfig.svelte.setup({
        filetypes = { 'svelte' },
        on_attach = function(client, bufnr)
          if client.name == 'svelte' then
            vim.api.nvim_create_autocmd('BufWritePost', {
              pattern = { '*.js', '*.ts', '*.svelte' },
              callback = function(ctx)
                client.notify('$/onDidChangeTsOrJsFile', { uri = ctx.file })
              end,
            })
          end
          if vim.bo[bufnr].filetype == 'svelte' then
            vim.api.nvim_create_autocmd('BufWritePost', {
              pattern = { '*.js', '*.ts', '*.svelte' },
              callback = function(ctx)
                client.notify('$/onDidChangeTsOrJsFile', { uri = ctx.file })
              end,
            })
          end
        end,
      })

      --typescript-language-server
      lspconfig.ts_ls.setup({})

      --pyright
      lspconfig.pyright.setup({})

      --biome
      lspconfig.biome.setup({})

      local mason = require('mason')
      -- local masonlspconfig = require('mason-lspconfig')

      mason.setup()
    end,
  },
}

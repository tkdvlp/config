vim.cmd 'packadd packer.nvim | au BufWritePost plugins.lua PackerCompile'
vim.opt.rtp = vim.opt.rtp + '~/.local/share/nvim/site/pack/packer/opt/*'

local packer = require 'packer'
local plugin_path = U.os.data .. '/site/pack/packer/opt/'
local packer_compiled = U.os.data .. '/site/plugin/packer_compiled.vim'

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return packer.startup(function(use)
  packer.init { compile_path = packer_compiled, opt_default = true }

  -- Plugin Manager
  use { 'wbthomason/packer.nvim' }

  -- LSP
  use { 'williamboman/nvim-lsp-installer', event = 'BufRead' }

  use { 'neovim/nvim-lspconfig', setup = [[require('plugin.nvim-lspconfig')]] }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    -- setup = [[require('plugin.null-ls')]]
  }
  use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }

  use {
    'RishabhRD/nvim-lsputils',
    requires = { 'RishabhRD/popfix' },
    setup = [[require('plugin.nvim-lsputils')]],
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    setup = [[require('plugin.nvim-treesitter')]],
    requires = { 'windwp/nvim-ts-autotag' },
  }

  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    setup = [[require('plugin.nvim-treesitter-textobjects')]],
  }

  -- Autocomplete
  use 'rafamadriz/friendly-snippets'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/vim-vsnip' },
      { 'hrsh7th/vim-vsnip-integ' },
      { 'hrsh7th/cmp-vsnip' },
      { 'hrsh7th/cmp-calc' },
      { 'hrsh7th/cmp-cmdline' },
    },
    config = function()
      require 'plugin.nvim-cmp'
    end,
    event = 'InsertEnter',
  }

  -- use {'github/copilot.vim'}

  -- File browser
  --use { 'justinmk/vim-dirvish', setup = [[require('plugin.dirvish')]] }

use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    setup = [[require('plugin.nvim-tree')]],
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

  -- FZF file/content search
  use {
    'junegunn/fzf.vim',
    setup = [[require('plugin.fzf')]],
    requires = { 'junegunn/fzf' },
    event = 'BufRead',
  }

  use {
    'chengzeyi/fzf-preview.vim',
    after = 'fzf.vim',
    requires = { 'ryanoasis/vim-devicons' },
  }

  -- Git
  use { 'tpope/vim-fugitive', setup = [[require('plugin.vim-fugitive')]] }

  use {
    'lewis6991/gitsigns.nvim',
    setup = [[require('plugin.gitsigns')]],
    requires = { 'nvim-lua/plenary.nvim' },
    event = 'BufRead',
  }

  -- Stabilize windows
  use {
    'luukvbaal/stabilize.nvim',
    config = function()
      require('stabilize').setup()
    end,
  }

  -- Quickfix list
  use 'romainl/vim-qlist'
  use 'romainl/vim-qf'

  -- Show register contents
  use 'junegunn/vim-peekaboo'

  -- Colorschemes
  -- use { 'ChristianChiarulli/nvcode-color-schemes.vim' }
  -- use { 'folke/tokyonight.nvim' }
  use { 'NLKNguyen/papercolor-theme' }

  -- Movement
  use {
    'justinmk/vim-sneak',
    setup = [[require('plugin.vim-sneak')]],
    event = 'BufRead',
  }

  -- Misc
  -- Statusline
  use { 'nvim-lualine/lualine.nvim', setup = [[require('plugin.lualine')]] }

  -- Complementary pairs of mappings
  use 'tpope/vim-unimpaired'
  -- Make plugin actions repeatable by .
  use 'tpope/vim-repeat'
  -- Show search result count
  use 'google/vim-searchindex'
  -- Pickup and use editor config files
  use 'editorconfig/editorconfig-vim'

  -- Autoinstall/compile plugins
  if vim.fn.isdirectory(vim.fn.glob(plugin_path)) > 0 then
    packer.install()
  end
  if vim.fn.empty(vim.fn.glob(packer_compiled)) > 0 then
    packer.compile()
  end
end)

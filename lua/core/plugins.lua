local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'rebelot/kanagawa.nvim'
  use 'shaunsingh/nord.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use { 'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    requires = { { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' } }
  }
  use { 'hrsh7th/nvim-cmp',
    requires = { { 'hrsh7th/cmp-nvim-lsp' } }
  }
  use { 'L3MON4D3/LuaSnip',
    requires = { { 'saadparwaiz1/cmp_luasnip', 'rafamadriz/friendly-snippets' } }
  }
  use 'bluz71/vim-nightfly-colors'
  use 'vim-test/vim-test'
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  use 'lewis6991/gitsigns.nvim'
  use 'romgrk/barbar.nvim'
  use 'akinsho/toggleterm.nvim'
  use { "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = {
        "markdown"
      }
    end,
    ft = { "markdown" },
  }


  if packer_bootstrap then
    require('packer').sync()
  end
end)

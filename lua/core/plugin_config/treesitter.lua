require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "rust", "vim", "javascript", "typescript", "go", "yaml", "html" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}

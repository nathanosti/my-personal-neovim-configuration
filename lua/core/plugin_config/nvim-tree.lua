require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
    custom = { '^.git$' }
  }
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

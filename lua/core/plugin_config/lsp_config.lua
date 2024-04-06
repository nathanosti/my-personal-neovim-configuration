require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

local function setup_lsp(lsp_name, on_attach)
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  local lsp_config = require("lspconfig")
  lsp_config[lsp_name].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local installed_lsps = { "lua_ls", "rust_analyzer", "html", "tsserver", "prismals", "pyright", "yamlls", "graphql", "gopls", "golangci_lint_ls", "eslint", "cssls", "tailwindcss" }

require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = installed_lsps
}

local on_attach = function(_, bufnr)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
  vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format { async = true }
  end, {})
end

for _, lsp_name in ipairs(installed_lsps) do
  setup_lsp(lsp_name, on_attach)
end

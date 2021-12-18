local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  capabilities = capabilities
}

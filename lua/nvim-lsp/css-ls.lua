local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require "lspconfig".css.setup {
  on_attach = require "nvim-lsp".common_on_attach,
  capabilities = capabilities,
}

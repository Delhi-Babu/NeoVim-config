local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require "lspconfig".html.setup {
  cmd = {
    "node",
    DATA_PATH .. "/lspinstall/html/vscode-html/html-language-features/server/dist/node/htmlServerMain.js",
    "--stdio"
  },filetypes = {'html','css','javascript','javascriptreact','javascript.jsx'},
  on_attach = require "nvim-lsp".common_on_attach,
  capabilities = capabilities
}

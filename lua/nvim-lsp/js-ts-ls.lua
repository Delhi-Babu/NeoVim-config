require "lspconfig".typescript.setup {
  cmd = {DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server", "--stdio"},
  filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact"},
  on_attach = require "nvim-lsp".tsserver_on_attach,
  root_dir = require("lspconfig/util").root_pattern("package.json", "tsconfig.json", ".git"),
  settings = {documentFormatting = false},
  handlers = {
    ["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics,
      {
        virtual_text = O.tsserver.diagnostics.virtual_text,
        signs = O.tsserver.diagnostics.signs,
        underline = O.tsserver.diagnostics.underline,
        update_in_insert = true
      }
    )
  }
}

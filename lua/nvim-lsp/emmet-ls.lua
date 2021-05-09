local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

require "lspconfig/configs".emmet_ls = {
  default_config = {
    cmd = {"emmet-ls", "--stdio"},
    filetypes = {"html", "css","scss", "sass", "less", "javascript", "javascriptreact", "javascript.jsx"},
    root_dir = require "lspconfig".util.root_pattern(".git", vim.fn.getcwd())
  }
}

require "lspconfig".emmet_ls.setup {
  on_attach = require "nvim-lsp".common_on_attach
}

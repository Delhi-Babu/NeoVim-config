local prettier = require "nvim-lsp/efm/prettier"
require "lspconfig".efm.setup {
  cmd = {DATA_PATH .. "/lspinstall/efm/efm-langserver"},
  on_attach = require "nvim-lsp".common_on_attach,
  init_options = {
    -- documentFormatting = true,
    codeAction = true,
    completion = true
  },
  filetypes = {"javascriptreact", "javascript", "html", "css", "json", "lua","scss","sass"},
  settings = {
    rootMarkers = {".git/"}
  }
}

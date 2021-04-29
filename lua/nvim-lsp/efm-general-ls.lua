local prettier = require "nvim-lsp/efm/prettier"
require"lspconfig".efm.setup {
    cmd = {DATA_PATH .. "/lspinstall/efm/efm-langserver"},
on_attach = require'nvim-lsp'.common_on_attach,
    init_options = {
        documentFormatting = true,
        codeAction = false,
        completion = true
    },
    filetypes = {"javascriptreact", "javascript", "html", "css", "json", "lua"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            javascript = {prettier},
			javascriptreact = {prettier},
            html = {prettier},
            css = {prettier},
            json = {prettier},
            yaml = {prettier},
            -- lua = {{formatCommand = "lua-format -i", formatStdin = true}}
        }
    }
}

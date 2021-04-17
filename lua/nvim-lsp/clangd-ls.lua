require'lspconfig'.cpp.setup {
	cmd = {DATA_PATH .. "/lspinstall/cpp/clangd/bin/clangd","--header-insertion=iwyu"},
    on_attach = require'nvim-lsp'.common_on_attach,
    filetypes = { "c", "cpp"},
	-- init_options = {
	-- 	header_insertion="iwyu"
	-- },
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = true,
            signs = true,
            underline = true,
            update_in_insert = true,
			-- header-insertion = "iwyu",
        })
    }
}

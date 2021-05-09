vim.cmd("nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>")
-- vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>',{silent=true})
vim.cmd("nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>")
vim.cmd("nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>")
vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")

vim.cmd("nnoremap <silent> ca :Lspsaga code_action<CR>")
vim.cmd("nnoremap <silent> K :Lspsaga hover_doc<CR>")
-- vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd("nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>")
vim.cmd("nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>")
-- scroll down hover doc or scroll in definition preview
vim.cmd("nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
-- scroll up hover doc
vim.cmd("nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")
vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')

vim.cmd("nnoremap <silent> <Leader>gh :Lspsaga lsp_finder<CR>")
vim.cmd("nnoremap <silent> <Leader>gs :Lspsaga signature_help<CR>")
vim.cmd("nnoremap <silent> <Leader>gr :Lspsaga rename<CR>")
vim.cmd("nnoremap <silent> <Leader>gd :Lspsaga preview_definition<CR>")

local function documentHighlight(client, bufnr)
  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec(
      [[
	hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
	hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
	hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
	augroup lsp_document_highlight
	  autocmd! * <buffer>
	  autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
	  autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
	augroup END
  ]],
      false
    )
  end
end
local lsp_config = {}

function lsp_config.common_on_attach(client, bufnr)
  documentHighlight(client, bufnr)
end

return lsp_config
----------------------------------------------------------------------------------------------------------------- --
--

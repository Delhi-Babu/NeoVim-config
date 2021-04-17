vim.g.vimspector_enable_mappings = "HUMAN"
vim.api.nvim_set_keymap('n', '<Leader>dd', ':call vimspector#Launch()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<leader>dc', ':VimspectorReset<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<leader>de',':VimspectorEval',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<leader>dw',':VimspectorWatch',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<leader>do',':VimspectorShowOutput',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<leader>db','<Plug>VimspectorToggleBreakpoint',{})

vim.api.nvim_set_keymap('n', '<leader>dl', '<Plug>VimspectorStepInto', {})
vim.api.nvim_set_keymap('n', '<leader>dj', '<Plug>VimspectorStepOver', {})
vim.api.nvim_set_keymap('n', '<leader>dk', '<Plug>VimspectorStepOut', {})
vim.api.nvim_set_keymap('n', '<leader>dr', '<Plug>VimspectorRestart', {})
vim.api.nvim_set_keymap('n', '<leader>d<leader>',':call vimspector#Continue()<CR>', {noremap = true, silent = true})



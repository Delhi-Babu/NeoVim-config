require('nvim_comment').setup()
vim.api.nvim_set_keymap("n", "<Leader>/", ":CommentToggle<CR>", {noremap=true, silent = true})
vim.api.nvim_set_keymap("v", "<Leader>/", ":CommentToggle<CR>", {noremap=true, silent = true})

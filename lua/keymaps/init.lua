-- Make space as the leader key
vim.api
    .nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv',
                        {noremap = true, silent = true})

-- File explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>',
                        {noremap = true, silent = true})

-- Better movement between windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>m', ':MaximizerToggle<CR>',
                        {noremap = true, silent = true})

-- vim.api.nvim_set_keymap('n', '<Leader>f', ':LspFormatting<CR>',
--                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>t', ':Telescope<CR>',
                        {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n','<leader>/',':CommentToggle<CR>',{noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n','gp','%!prettier --stdin-filepath %<CR>',{noremap = true, silent = true})
vim.cmd('nnoremap <leader>f :Format<CR>')

vim.cmd("imap <expr> <CR>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<CR>'")
vim.cmd("smap <expr> <CR>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<CR>'")


vim.cmd("imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'")
vim.cmd("smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'")
vim.cmd("imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'")
vim.cmd("smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'")

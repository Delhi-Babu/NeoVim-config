-- NOTE: No need to call .setup() if you don't want to customize anything
require'FTerm'.setup({
    -- Default dimensions in percentage, you can customize them individually
    -- Value should be between 0 and 1
    -- dimensions  = {
    --     height = 0.8,
    --     width = 0.8,
    --     row = 0.5,
    --     col = 0.5
    -- }
    -- Default border characters, you can customize them individually
    border = {
        horizontal = '─',
        vertical = '│',
        topLeft = '┌',
        topRight = '┐',
        bottomRight = '┘',
        bottomLeft = '└'
    }
})

-- -- Keybinding

-- -- Closer to the metal
-- vim.fn.nvim_set_keymap('n', '<A-i>', '<CMD>lua require"FTerm".toggle()<CR>', { noremap = true, silent = true })
-- vim.fn.nvim_set_keymap('t', '<A-i>', '<C-\\><C-n><CMD>lua require"FTerm".toggle()<CR>', { noremap = true, silent = true })

-- -- or

-- vim.fn.nvim_set_keymap('n', '<A-i>', ':FTermToggle<CR>', { noremap = true, silent = true })
-- vim.fn.nvim_set_keymap('t', '<A-i>', '<C-\\><C-n>:FTermToggle<CR>', { noremap = true, silent = true })

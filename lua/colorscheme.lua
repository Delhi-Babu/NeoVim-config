vim.cmd('colorscheme ' .. O.colorscheme)



vim.cmd('highlight Normal guibg=#1D1F23 guifg=#dfdfe0')

vim.api.nvim_exec([[
hi Comment guifg=#608B4E
highlight PmenuSel guifg=#ffffff guibg=#0f5bca guisp=NONE gui=NONE cterm=NONE
highlight Pmenu guifg=#B4C3C1 guibg=#2D2D30
highlight Folded guibg=#333441 guifg=#ffffff
highlight ColorColumn ctermbg=NONE guibg=#C44C4C
hi Normal guibg=#1F2125 guifg=#dfdfe0
highlight Pmenu guibg=#2D2D36 guifg=White
highlight Terminal guibg=Black
highlight signcolumn guibg=#1F2125 
highlight Comment cterm=italic gui=italic
]],false)
vim.cmd('highlight red guifg=#BE5046')
vim.cmd('highlight yellow guifg =#E5C07B')
vim.cmd('highlight green guifg=#98c379')
vim.cmd('highlight blue guifg=#56b6c2')
vim.cmd('highlight purple guifg=#c678dd')

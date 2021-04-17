vim.cmd('colorscheme ' .. O.colorscheme)

-- vim.cmd('highlight Normal guibg=#1D1F23 guifg=#dfdfe0')

vim.api.nvim_exec([[
hi Comment guifg=#608B4E
highlight PmenuSel guifg=#ffffff guibg=#0f5bca guisp=NONE gui=NONE cterm=NONE
highlight Pmenu guifg=#B4C3C1 guibg=#2D2D30
highlight Folded guibg=#333441 guifg=#ffffff
highlight ColorColumn ctermbg=NONE guibg=#C44C4C
hi Normal guibg=#1F2125 guifg=#dfdfe0
highlight Pmenu guibg=#2D2D36 guifg=White
highlight Terminal guibg=Black
]],false)


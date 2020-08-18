" This colors looks bright
let g:onedark_color_overrides = {
    \ "red": {"gui": "#FF4352", "cterm":"NONE","cterm16":"NONE"},
    \ "purple": { "gui": "#FD77F2", "cterm": "170", "cterm16": "5" },
    \ "yellow": {"gui": "#FBBE4E","cterm":"NONE","cterm16":"NONE"}
    \}
let g:onedark_terminal_italics = 1

colorscheme onedark

" Some custom highlights
hi Normal guifg=#dfdfe0 guibg=#212428
hi Comment guifg=#6CBA49
hi PmenuSel guifg=#ffffff guibg=#0f5bca guisp=NONE gui=NONE cterm=NONE
hi Pmenu guifg=#B4C3C1
hi Folded guibg=#333441 guifg=#ffffff
" hi ColorColumn ctermbg=0 guibg=#081321
hi ColorColumn ctermbg=NONE guibg=#C44C4C

" Checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    " hi LineNr ctermbg=NONE guibg=NONE
endif

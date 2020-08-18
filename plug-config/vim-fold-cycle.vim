let g:fold_cycle_default_mapping = 0 "disable default mappings
nmap <Leader> <Plug>(fold-cycle-open)
" nmap <S-Tab><S-Tab> <Plug>(fold-cycle-close)
nmap <Leader><Leader> <Plug>(fold-cycle-close)

" Won't close when max fold is opened
let g:fold_cycle_toggle_max_open  = 1
" Won't open when max fold is closed
let g:fold_cycle_toggle_max_close = 1

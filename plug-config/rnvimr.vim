" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

nmap <space>r :RnvimrToggle<CR>

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Link CursorLine into RnvimrNormal highlight in the Floating window
highlight link RnvimrNormal CursorLine


" Map Rnvimr action
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }

" Customize the initial layout
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': float2nr(round(0.6 * &columns)),
            \ 'height': float2nr(round(0.6 * &lines)),
            \ 'col': float2nr(round(0.2 * &columns)),
            \ 'row': float2nr(round(0.2 * &lines)),
            \ 'style': 'minimal' }

" Customize multiple preset layouts
" '{}' represents the initial layout
let g:rnvimr_presets = [
            \ {'width': 0.800, 'height': 0.800}]

" These are the defaults Incase if I need them
            " \ {},
            " \ {'width': 0.700, 'height': 0.700},
            " \ {'width': 0.800, 'height': 0.800},
            " \ {'width': 0.950, 'height': 0.950},
            " \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            " \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            " \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            " \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            " \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            " \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            " \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            " \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}


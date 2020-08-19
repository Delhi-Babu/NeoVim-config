
let g:coc_explorer_global_presets = {
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 30,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'right-center',
\      'floating-width': 30,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }


" Use preset argument to open it
nmap <silent><space>e :CocCommand explorer<CR>
nmap <silent><space>f :CocCommand explorer --preset floatingRightside<CR>

" List all presets
nmap <space>el :CocList explPresets


autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

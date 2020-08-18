" " Remapping the leader to space so 
" nnoremap <Leader> zA
" Any-fold 
filetype plugin indent on " required
" Setting any-fold active for all tyes 
autocmd Filetype * AnyFoldActivate
" Open fold always
set foldlevel=99
" Auto fold comments
let g:anyfold_fold_comments=1

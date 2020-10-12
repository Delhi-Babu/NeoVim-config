" Dont start the browser automatically let me choose 
let g:bracey_auto_start_browser = 0
" Reload everytime I saved the file
let g:bracey_refresh_on_save = 1
" This is vscode live server port
let g:bracey_server_port=5500

let g:bracey_refresh_js_files_on_save = 1
let g:bracey_eval_on_save = 0

" Reload Bracey when saving javascript files
" if g:bracey_refresh_js_files_on_save && !(g:bracey_eval_on_save)
"   autocmd BufWritePost *.js call bracey#reload()
" endif

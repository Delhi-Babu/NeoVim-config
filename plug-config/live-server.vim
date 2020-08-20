function! OpenLiveServer()
 echo 'live server is on'
 " silent !browser-sync start --server --files "*" &
 silent !live-server  &
endfunction

command Serve :call OpenLiveServer()
nnoremap <silent>ls :call OpenLiveServer()<CR>

"Custom Mappings 
nnoremap <silent> <Leader>n :Lexplore<CR>
nnoremap <silent> <Leader>q :help quickref<CR>
nnoremap <silent> <Leader>R :e $MYVIMRC<cr>
nnoremap <Leader>z :vertical resize 
nnoremap <Leader>t :below terminal powershell.exe<cr>
nnoremap <silent> <Leader>B :bp\|bd # <cr>
nnoremap <silent> <Leader>v :set virtualedit+=all<cr>
nnoremap <silent> <Leader>V :set virtualedit-=all<cr>

"Map buffer commands to g
nnoremap gb :bnext<cr>
nnoremap gB :bprev<cr>

"Custom Commands
command! Notes Explore scp://cultofatnu.org/notes/

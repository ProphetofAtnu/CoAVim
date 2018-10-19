"Custom Mappings 
nnoremap <silent> <Leader>n :Lexplore<CR>
nnoremap <silent> <Leader>q :help quickref<CR>
nnoremap <silent> <Leader>r :VimScripts<cr>
nnoremap <silent> <Leader>R :e $MYVIMRC<cr>
nnoremap <Leader>z :vertical resize 
nnoremap <Leader>t :below terminal powershell.exe<cr>
nnoremap <silent> <Leader>B :bp\|bd # <cr>
nnoremap <silent> <Leader>v :set virtualedit+=all<cr>
nnoremap <silent> <Leader>V :set virtualedit-=all<cr>

"Errors menu
nnoremap <silent> <Leader>co :copen<cr>
nnoremap <silent> <Leader>cc :cclose<cr>
nnoremap <silent> <leader>cn :cnext<cr>
nnoremap <silent> <Leader>cp :cprevious<cr>

"Insert Mode Maps
inoremap <S-Tab> <C-V><Tab>
"Map buffer commands to g
nnoremap gb :bnext<cr>
nnoremap gB :bprev<cr>

"Go to url
nnoremap gl viW"iy :OpenInBrowser <C-R>i <cr>

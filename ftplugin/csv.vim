let g:csv_arrange_use_all_rows = 1

nnoremap <silent> <Leader>c :%ArrangeColumn!<cr>
noremap <silent> î :NewRecord<cr>
inoremap ì <esc>f,a
inoremap è <esc>F,i

augroup csvft
  au InsertLeave,BufReadCmd,BufRead,BufWritePost *.csv :%ArrangeColumn!
  au BufWritePre *.csv :%UnArrangeColumn
  autocmd InsertLeave *.csv :%ArrangeColumn
augroup END



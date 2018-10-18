" Writing notes
let g:Notes_Directory = "~/Documents/Notes"

function! CreateNote(name)
  let nname=a:name
  let path = g:Notes_Directory . "/" . nname . ".txt"
  let vdirectives = "vim:ft=help"
  if filereadable(path)
    exec "e " . path
  else
    exec "e " . path
    :normal! 3O
    :call append(line('$'), vdirectives)
    :call setline(1,"*".nname."*")
    :normal! 3gg
    :set ft=help
  endif
endfunction

command! Notes exec "Explore " . g:Notes_Directory
command! -nargs=1 NewNote call CreateNote(<f-args>)
command! NotesIndex exec "helptags " . g:Notes_Directory"

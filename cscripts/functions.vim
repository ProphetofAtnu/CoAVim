" Writing notes
let g:Notes_Directory = "~/Documents/Notes/"
let g:webbrowser = "firefox"
let g:Notes_Updater = "~/Documents/Notes/bin/update.sh"
let g:Notes_Indexer= "~/Documents/Notes/bin/IndexGen.py"

function! CreateNote(name)
  let nname=a:name
  let path = g:Notes_Directory . nname . ".txt"
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

function! NotesUpdate()
  :exec "!".g:Notes_Updater  
endfunction

function! NotesIndex()
  :exec "!" . g:Notes_Indexer
  :exec "helptags " . g:Notes_Directory

endfunc

function! OpenInBrowser(ln)
  let link=a:ln
  let browser=g:webbrowser 
  :silent exec "!".browser." ".link." &"
  :redraw!
endfunction


" Writing notes
let g:Notes_Directory = "~/Documents/Notes/"
let g:webbrowser = "firefox"

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

function! OpenInBrowser(ln)
  let link=a:ln
  let browser=g:webbrowser 
  :silent exec "!".browser." ".link." &"
  :redraw!
endfunction

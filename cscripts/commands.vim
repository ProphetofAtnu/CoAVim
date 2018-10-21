command! Notes exec "Exp " . expand(g:Notes_Directory)
command! -nargs=1 NewNote call CreateNote(<f-args>)
command! NotesIndex exec "helptags " . expand(g:Notes_Directory)
command! -nargs=1 NoteSearch exec "vimgrep " . <q-args> ." ". expand(g:Notes_Directory) . "/*"

"OpenInBrowser command

command! -nargs=1 OpenInBrowser call OpenInBrowser(<f-args>)

"For settings
command! VimScripts exec "Exp " . fnamemodify($MYVIMRC, ':h')

"Notes commands
command! Notes exec "Exp " . expand(g:Notes_Directory)
command! -nargs=1 NewNote call CreateNote(<f-args>)
command! -nargs=1 NoteSearch exec "vimgrep " . <q-args> ." ". expand(g:Notes_Directory) . "/*"
command! NoteIndex exec "e " . expand(g:Notes_Directory . "bin/index.txt") . "| set bufhidden=delete"
command! NoteIndexer call NotesIndex()
command! NoteUpdate call NotesUpdate()

"OpenInBrowser command

command! -nargs=1 OpenInBrowser call OpenInBrowser(<f-args>)

"For settings
command! VimScripts exec "Exp " . fnamemodify($MYVIMRC, ':h')

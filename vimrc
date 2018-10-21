if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "p")
endif
if !isdirectory($HOME."/.vim/swp")
    call mkdir($HOME."/.vim/swp", "p")
endif
if !isdirectory($HOME."/.vim/backup")
    call mkdir($HOME."/.vim/backup", "p")
endif

if has('win32') 
  set ttyscroll=0
  let g:python3_host_prog="C:/Python37/python.exe"
  set noeb vb t_vb=
endif

if has('unix')
  set guicursor=
" Workaround some broken plugins which set guicursor indiscriminately.
  autocmd OptionSet guicursor noautocmd set guicursor=
endif
set undodir=~/.vim/undo//
set directory=~/.vim/swp//
set backupdir=~/.vim/backup//

call plug#begin("~/.vim/plugged")

Plug 'PProvost/vim-ps1'
Plug 'itchyny/lightline.vim'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'tpope/vim-vinegar'
Plug 'othree/jspc.vim'
Plug 'afshinm/npm.vim'
Plug 'ap/vim-buftabline'
Plug 'chrisbra/csv.vim'
Plug 'davidhalter/jedi-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'isRuslan/vim-es6'
Plug 'justinmk/vim-sneak'
Plug 'moll/vim-node'
Plug 'myhere/vim-nodejs-complete'
Plug 'mtth/scratch.vim'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'tpope/vim-sensible'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'roxma/nvim-yarp'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install -g',
  \ 'for': ['neovim', 'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

Plug 'junegunn/fzf'
call plug#end()


"For Jedi and other autocomplete functions
set completeopt-=preview

set hidden

let g:LanguageClient_serverCommands = {
  \ 'javascript': ['javascript-typescript-stdio'],
  \ 'sh': ['bash-language-server', 'start']
  \}

"For SuperTab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"Tabular Specific
nnoremap <Leader>a :Tabular /

"VimSession 
let g:session_autoload = 'no'
let g:session_autosave = 'no'

"My stuff
execute "so ". expand("<sfile>:p:h") . "/cscripts/functions.vim"
execute "so ". expand("<sfile>:p:h") . "/cscripts/settings.vim"
execute "so ". expand("<sfile>:p:h") . "/cscripts/maps.vim"
execute "so ". expand("<sfile>:p:h") . "/cscripts/commands.vim"

"vim-javascript
let g:javascript_plugin_jsdoc = 1

"fzv
noremap <Leader>f :FZF<cr>

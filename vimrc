if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "p")
endif
if !isdirectory($HOME."/.vim/swp")
    call mkdir($HOME."/.vim/swp", "p")
endif
if !isdirectory($HOME."/.vim/backup")
    call mkdir($HOME."/.vim/backup", "p")
endif

set undodir=~/.vim/undo//
set directory=~/.vim/swp//
set backupdir=~/.vim/backup//
call plug#begin("~/.vim/plugged")

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'afshinm/npm.vim'
Plug 'ap/vim-buftabline'
Plug 'chrisbra/csv.vim'
Plug 'davidhalter/jedi-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'gyim/vim-boxdraw'
Plug 'isRuslan/vim-es6'
Plug 'junegunn/fzf'
Plug 'justinmk/vim-sneak'
Plug 'moll/vim-node'
Plug 'myhere/vim-nodejs-complete'
Plug 'mtth/scratch.vim'
Plug 'pangloss/vim-javascript'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'tpope/vim-sensible'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'roxma/nvim-yarp'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install -g',
  \ 'for': ['neovim', 'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

call plug#end()
"
"For Jedi and other autocomplete functions
set completeopt-=preview

"For SuperTab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"Tabular Specific
nnoremap <Leader>a :Tabular /

"VimSession 
let g:session_autoload = 'no'
let g:session_autosave = 'no'

"My stuff
execute "so ". expand("<sfile>:p:h") . "/cscripts/settings.vim"
execute "so ". expand("<sfile>:p:h") . "/cscripts/maps.vim"
" Use deoplete.
let g:deoplete#enable_at_startup = 1

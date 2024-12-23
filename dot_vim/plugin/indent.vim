vim9script

set autoindent
set smartindent
set smarttab

set shiftwidth=4
set tabstop=4

set expandtab
set softtabstop=2

noremap <Home> <ScriptCmd>util#ExtendedHome()<CR>
inoremap <Home> <C-O><ScriptCmd>util#ExtendedHome()<CR>
vnoremap <Home> ^

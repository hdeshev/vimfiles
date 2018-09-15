set shell=/bin/sh " avoid errors caused by using exotic shells e.g. fish

" load pathogen - the vim bundle manager
call pathogen#infect()

"completion
set completeopt=menuone

"the sane settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
"expand tabs into spaces
set expandtab
set autoindent
set smartindent
set smarttab

"highlighting
syntax on

" search and replace
set ignorecase
set hlsearch
set incsearch

" Tmux/terminal-related
set notimeout
set ttimeout
set timeoutlen=50

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" show a completion popup for commands
set wildmenu

set wildignorecase "case-insensitive filename completion
set wildignore+=tags,*.so,*.swp,*.bak,*.pyc,*.pyo,*.min.*js,*.min.*css,*.zip
set wildignore+=*/node_modules/*
set wildignore+=*/platforms/android/*
set wildignore+=*/platforms/ios/*

set path=**

if executable('ack')
  set grepprg=ack\ -s\ -H\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

autocmd QuickFixCmdPost *grep* cwindow

"let g:NERDTreeRespectWildIgnore = 1

" Don't blink at me!
set novisualbell
" And now stop the blinking too.
set vb t_vb=

" Enable mouse in GUI and xterms
set mouse=a

"set the GUI 'current' folder relative to the buffer
set browsedir=buffer

"configure a monospace font that supports cyrillic
if has("unix")
    set guifont=DejaVu\ Sans\ Mono\ 12
    "set guifont=Ubuntu\ Mono\ 14
else
    "set guifont=Consolas:h12
    set guifont=DejaVu_Sans_Mono:h12
endif

set guioptions-=T "No toolbar
set guioptions-=m "No menubar
set guioptions-=r "No right scrollbar
set guioptions-=R "No right scrollbar
set guioptions-=l "No left scrollbar
set guioptions-=L "No left scrollbar

" Save UI space
set nonumber

"Set xterm terminal title
set title
"Shorter messages
set shortmess=atI

set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands

"setup window
if has("gui_running")
    "winpos 0 0
    set lines=56
    set columns=140
endif

set ttyfast
set laststatus=2

source ~/.vim/journal.vim
source ~/.vim/tmux.vim
source ~/.vim/shortcuts.vim
source ~/.vim/filetypes.vim
source ~/.vim/python.vim

set nocompatible

set t_Co=256
set background=dark
"colorscheme nofrils-dark
let g:solarized_termcolors=256
colorscheme solarized

"autosave buffers
set autowriteall

"unicode options. we want utf-8 and no BOM symbols
set encoding=utf-8
setglobal fileencoding=utf-8
set nobomb

"don't litter with annoying files when opening a file
set nobackup
set nowritebackup
set noswapfile
set nofoldenable
" set backupdir=~/.vim/tmp,/tmp
" set directory=~/.vim/tmp,/tmp

"Hide abandoned buffers in order to not lose undo history.
set hidden
"Moar history!
set history=1000
if has('persistent_undo')
    set undolevels=5000
    set undodir=$HOME/.vim/tmp
    set undofile
endif

"look for tags files in the current folder and work up
"the dir tree if not found.
set tags=./tags;/

" show trailing whitespace as dots
set list listchars=tab:·\ ,trail:·

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=1000

let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'

"let g:ackprg="ack --nocolor --nogroup"
let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
let g:ackhighlight=1

let g:GPGDefaultRecipients = ["hristo@deshev.com"]

"
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_python_flake8_args="--ignore=E501,E401,E124,E126,E127,E128,E261,E265"

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_json_checkers = ["jshint"]

let g:syntastic_typescript_checkers = ["tslint"]

let g:tagbar_left = 1
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_autoshowtag = 1

set showfulltag

" ctags-filter is a wrapper script that filters 'tags' missed by our
" TypeScript ctags regexes e.g.:
"
" ctags $@ | egrep -v '^(if|for|while|switch|super)\b'
let g:tagbar_type_typescript = {
    \ 'ctagstype' : 'typescript',
    \ 'ctagsbin' : 'ctags-filter',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'i:interfaces',
        \ 'm:members',
        \ 'f:functions',
        \ 'v:variables',
    \ ]
\ }

let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'typescript',
    \ 'ctagsbin' : 'ctags-filter',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'i:interfaces',
        \ 'm:members',
        \ 'f:functions',
        \ 'v:variables',
    \ ]
\ }

let g:tagbar_type_css = {
    \ 'ctagstype' : 'css',
    \ 'ctagsbin' : 'ctags',
    \ 'kinds'     : [
        \ 'c:class',
        \ 'i:id',
        \ 't:tag',
    \ ]
\ }

" use ag for file searches if there (faster)
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:typescript_indent_disable = 1
let g:js_indent_typescript = 1

let g:NERDSpaceDelims = 1

set rtp+=~/.fzf

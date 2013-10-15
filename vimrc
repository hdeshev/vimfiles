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
set wildignore+=*/tmp/*,*/venv/*,*/CACHE/*,*.so,*.swp,*.bak,*.pyc,*.pyo,*.min.*js,*.zip
let NERDTreeIgnore=['^tmp$', '^venv$', '^CACHE$', '\.so$', '\.swp$', '\.py[co]$', '\.min\.js$', '\.zip$']

" Don't blink at me!
set novisualbell
" And now stop the blinking too.
set vb t_vb=

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

source ~/.vim/shortcuts.vim
source ~/.vim/filetypes.vim
source ~/.vim/python.vim
source ~/.vim/journal.vim

set nocompatible

set t_Co=256
colorscheme evening

"autosave buffers
set autowrite

"unicode options. we want utf-8 and no BOM symbols
set encoding=utf-8
setglobal fileencoding=utf-8
set nobomb

"don't litter with annoying files when opening a file
set nobackup
set nowritebackup
set noswapfile
" set backupdir=~/.vim/tmp,/tmp
" set directory=~/.vim/tmp,/tmp

"Hide abandoned buffers in order to not lose undo history.
set hidden
"Moar history!
set history=1000

"look for tags files in the current folder and work up
"the dir tree if not found.
set tags=./tags;/

" show trailing whitespace as dots
set list listchars=tab:\ \ ,trail:·

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1

let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'

"let g:ackprg="ack --nocolor --nogroup"
let g:ackhighlight=1

let g:GPGDefaultRecipients = ["hristo@deshev.com"]

let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_python_flake8_args="--ignore=E501,E401,E124,E126,E127,E128"

let g:Tlist_Close_On_Select = 1
"let g:Tlist_Use_Horiz_Window = 1
let g:Tlist_WinWidth = 50
let g:Tlist_Compact_Format = 1
let g:Tlist_Enable_Fold_Column = 0
let g:TlistHighlightTag = 0
let g:Tlist_Auto_Highlight_Tag = 0
let g:Tlist_GainFocus_On_ToggleOpen = 1
let g:Tlist_Use_Right_Window = 0
let g:Tlist_Show_Menu = 1
let g:Tlist_Highlight_Tag_On_BufEnter = 1
let g:Tlist_Show_One_File = 1

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

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" show a completion popup for commands
set wildmenu

" Don't blink at me!
set novisualbell
" And now stop the blinking too.
set vb t_vb=

"set the GUI 'current' folder relative to the buffer
set browsedir=buffer

"configure a monospace font that supports cyrillic
if has("unix")
    "set guifont=DejaVu\ Sans\ Mono\ 12
    set guifont=Ubuntu\ Mono\ 14
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

if has("unix")
    source ~/.vim/shortcuts.vim
    source ~/.vim/filetypes.vim
else
    source ~/vimfiles/shortcuts.vim
    source ~/vimfiles/filetypes.vim
endif

set nocompatible

set t_Co=256
colorscheme badwolf

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

"look for tags files next to the current file, in the Vim current
"folder, and the special Lift 2.3 tags.
set tags=./tags,tags

" show trailing whitespace as dots
set list listchars=tab:\ \ ,trail:·

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1

let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

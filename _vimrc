"completion
set completeopt=menuone

"the sane settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
"use tabs instead of spaces
"set noexpandtab
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
set gdefault

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" show a completion popup for commands
set wildmenu

" Visual bell "blinks" instead of beeping
set visualbell
" And now stop the blinking too.
set vb t_vb=

"set the GUI 'current' folder relative to the buffer
set browsedir=buffer

"configure a monospace font that supports cyrillic
if has("unix")
    set guifont=DejaVu\ Sans\ Mono\ 12
else
    "set guifont=Consolas:h12
    set guifont=DejaVu_Sans_Mono:h12
endif

set guioptions-=T "No toolbar
set guioptions-=m "No menubar

set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands

"setup window
winpos 0 0
set lines=55
set columns=140
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

"Hide abandoned buffers in order to not lose undo history.
set hidden

"look for tags files next to the current file, in the Vim current
"folder, and the special Lift 2.3 tags.
set tags=./tags,tags

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

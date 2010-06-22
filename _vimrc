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

"searching only
set ignorecase

"highlighting
syntax on
set hlsearch
"incremental search
set incsearch

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"set the GUI 'current' folder relative to the buffer
set browsedir=buffer

"configure a monospace font that supports cyrillic
if has("unix")
    set guifont=DejaVu\ Sans\ Mono\ 10
else
    "set guifont=Consolas:h12
    set guifont=DejaVu_Sans_Mono:h10
endif

set guioptions-=T "No toolbar

set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands

"setup window
winpos 0 0
set lines=50
set columns=140
 
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

"unicode options. we want utf-8 and BOM symbols
set encoding=utf-8
setglobal fileencoding=utf-8
set nobomb

"don't litter with annoying files when opening a file
set nobackup
set nowritebackup
set noswapfile

"Hide abandoned buffers in order to not lose undo history.
set hidden

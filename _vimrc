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
"incremental search
set incsearch

"highlighting
syntax on
set hlsearch

"autosave buffers
set autowrite

"unicode options. we want utf-8 and BOM symbols
set encoding=utf-8
setglobal fileencoding=utf-8
"set bomb

"set the 'current' folder relative to the buffer
set browsedir=buffer

"configure a monospace font that supports cyrillic
if has("unix")
    set guifont=DejaVu\ Sans\ Mono\ 10
else
    "set guifont=Consolas:h12
    set guifont=DejaVu_Sans_Mono:h10
endif

"No toolbar
set guioptions-=T

"setup window
winpos 0 0
set lines=50
set columns=120
 
source ~/vimfiles/shortcuts.vim
source ~/vimfiles/filetypes.vim

set nocompatible

colorscheme evening

"don't litter with annoying files when opening a file
set nobackup
set nowritebackup
set noswapfile

"Hide abandoned buffers in order to not lose undo history.
set hidden

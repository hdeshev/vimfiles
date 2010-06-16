"completion
set completeopt=menuone
"make Enter select the autocomplete menu item
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
imap <C-Space> <C-X><C-O>

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
    "set guifont=Consolas:h12
    set guifont=DejaVu\ Sans\ Mono\ 10
else
    set guifont=DejaVu_Sans_Mono:h10
endif

"No toolbar
set guioptions-=T

"setup window
winpos 0 0
set lines=50
set columns=120
 
"next/prev
map <F4> :cnext<CR>
map <S-F4> :cprev<CR>

"buffers
map <C-F4> :bd<CR>
map <F6> :bn<CR>
map <S-F6> :bp<CR>
map <F4> :BufExplorer<CR>
imap <F4> <Esc>:BufExplorer<CR>
map <F1> :NERDTreeToggle<CR>
imap <F1> <Esc>:NERDTreeToggle<CR>
map <F8> :cnext<CR>
map <S-F8> :cprev<CR>
"save
map <C-S> :w<CR>
imap <C-S> <Esc>:w<CR>


map <F12> :set filetype=xml<CR>
map <S-F12> :set filetype=html<CR>
map <F11> :set filetype=cs<CR>
map <S-F11> :set filetype=vb<CR>

"filetypes
" Ant
au BufNewFile,BufRead *.build setf ant
au BufNewFile,BufRead *.xaml setf xml
au BufNewFile,BufRead *.targets setf xml
au BufNewFile,BufRead *.config setf xml
au BufNewFile,BufRead *.*proj setf xml
au BufNewFile,BufRead *.fs setf ocaml
au BufNewFile,BufRead *.fsx setf ocaml
au BufNewFile,BufRead *.ps1 setf ps1


set nocompatible
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

colorscheme evening

"don't litter with annoying files when opening a file
set nobackup
set nowritebackup
set noswapfile

"Hide abandoned buffers in order to not lose undo history.
set hidden

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

au BufNewFile,BufRead *.build setf ant
au BufNewFile,BufRead *.xaml setf xml
au BufNewFile,BufRead *.targets setf xml
au BufNewFile,BufRead *.config setf xml
au BufNewFile,BufRead *.*proj setf xml
au BufNewFile,BufRead *.*aspx setf html
au BufNewFile,BufRead *.*ascx setf html
au BufWinEnter,BufNewFile,BufRead *.ssp setf html
au BufNewFile,BufRead *.fs setf ocaml
au BufNewFile,BufRead *.fsx setf ocaml
au BufNewFile,BufRead *.ps1 setf ps1
au BufRead,BufNewFile *.scala setf scala
au BufRead,BufNewFile *.sbt setf scala

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78

" Fix HTML indent on Enter key
autocmd FileType html setlocal indentkeys-=*<Return>

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
            \ if line("'\"") > 1 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

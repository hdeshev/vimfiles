" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

au BufNewFile,BufRead *.build setf ant
au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead *.xaml setf xml
au BufNewFile,BufRead *.targets setf xml
au BufNewFile,BufRead *.config setf xml
au BufNewFile,BufRead *.*proj setf xml
au BufNewFile,BufRead *.*django setf html
au BufNewFile,BufRead *.*dust setf html
au BufNewFile,BufRead *.*aspx setf html
au BufNewFile,BufRead *.*ascx setf html
au BufWinEnter,BufNewFile,BufRead *.ssp setf html
au BufNewFile,BufRead *.fs setf ocaml
au BufNewFile,BufRead *.fsx setf ocaml
au BufNewFile,BufRead *.ps1 setf ps1
au BufRead,BufNewFile *.scala setf scala
au BufRead,BufNewFile *.sbt setf scala
au BufRead,BufNewFile *supervisor*.conf setf dosini
au BufRead,BufNewFile *.es6 setf typescript
au BufRead,BufNewFile *.json setlocal sw=2 ts=2 et
au BufRead,BufNewFile *.js setlocal sw=2 ts=2 et
au BufRead,BufNewFile *.rb setlocal sw=2 ts=2 et
au BufRead,BufNewFile *.rake setlocal sw=2 ts=2 et
au BufRead,BufNewFile Rakefile setlocal sw=2 ts=2 et
au BufRead,BufNewFile *.yml setlocal sw=2 ts=2 et
au BufRead,BufNewFile *.yaml setlocal sw=2 ts=2 et
au BufRead,BufNewFile *.hs setlocal sw=2 ts=2 et
au BufRead,BufNewFile *.slim setlocal sw=2 ts=2 et
au BufRead,BufNewFile *.erb setlocal sw=2 ts=2 et

" For all text files set 'textwidth' to 78 characters.
autocmd FileType text setlocal textwidth=78
autocmd FileType markdown setlocal textwidth=100

" Git commit lines wrap at 70 characters
autocmd FileType gitcommit setlocal textwidth=70

" Fix typescript 2-space indents
autocmd FileType typescript setlocal shiftwidth=4 tabstop=4

" Override python-mode's fascist line number setting
autocmd FileType python setlocal nonumber

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

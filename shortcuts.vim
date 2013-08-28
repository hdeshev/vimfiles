"next/prev
map <F4> :cnext<CR>
map <S-F4> :cprev<CR>

"buffers
map <C-F4> :bd<CR>
map <F6> :bn<CR>
map <S-F6> :bp<CR>
map <F5> :!xdg-open %<CR>
map <S-F5> :!~/.vim/flake8 %<CR>
map <F7> :tn<CR>
map <F4> :BufExplorer<CR>
imap <F4> <Esc>:BufExplorer<CR>
map <F1> :NERDTreeToggle<CR>
map <F2> :QFix<CR>
map <S-F1> :NERDTreeFind<CR>
imap <F1> <Esc>:NERDTreeToggle<CR>
nmap <silent> <unique> <Leader>a :Ack!
nmap <silent> <unique> <Leader>g :AckFile
" make sure you have your wildignore properly set to ignore unneeded files in
" projects
map <unique> <Leader>f :e **/*
nmap <silent> <unique> <Leader>t :tag
map <S-F3> :call GenerateTags()<CR>
map <F8> :cnext<CR>
map <S-F8> :cprev<CR>
map <F9> :!jshint %<CR>
"save
map <C-S> :wa<CR>
imap <C-S> <Esc>:wa<CR>

function GenerateTags()
    let l:ctagsCmd = "ctags -R"
    " use .ctags-exclude in the current dir if it exists
	if getfperm(".ctags-exclude") != ""
        let l:ctagsCmd = l:ctagsCmd . " --exclude=@.ctags-exclude"
	endif
    echo "Generating tags: " . l:ctagsCmd
    call system(l:ctagsCmd)
endfunction


"replace word under cursor (ask for confirmation)
:nnoremap <Leader>r :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

"copy/paste to other apps
map <silent><Leader>y "+y
map <silent><Leader>p "+gp
imap <silent><Leader>p <C-o>"+gP
map <C-INSERT> "+y
imap <C-INSERT> <ESC>"+y
map <S-INSERT> "+gP
imap <S-INSERT> <ESC>"+gP

"insert line above insert mode
imap <M-o> <C-o>O
map <M-o> O

"Prev/Next methods
map <M-p> [m
map <M-n> ]m

"easily move across windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <F12> :set filetype=xml<CR>
map <S-F12> :set filetype=html<CR>

"make Enter select the autocomplete menu item
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
imap <C-Space> <C-X><C-O>

" Emacs (blasphemy!) shortcuts for cmd line and insert editing
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>
cnoremap <M-BS> <C-W>
cnoremap <M-d> <S-Right><C-W>

inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <M-b> <S-Left>
inoremap <M-f> <S-Right>
inoremap <M-BS> <C-W>
inoremap <M-d> <S-Right><C-W>

" move up/down by visible lines instead of file lines
nnoremap j gj
nnoremap k gk
nnoremap ^ g^
nnoremap <HOME> g^
nnoremap $ g$
nnoremap <END> g$
vnoremap j gj
vnoremap k gk
vnoremap ^ g^
vnoremap <HOME> g^
vnoremap $ g$
vnoremap <END> g$

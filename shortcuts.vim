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
map <S-F1> :NERDTreeFind<CR>
imap <F1> <Esc>:NERDTreeToggle<CR>
nmap <silent> <unique> <Leader>a :Ack
nmap <silent> <unique> <Leader>g :AckG
nmap <silent> <unique> <Leader>t :tag
map <S-F3> :!ctags -R<CR>
map <F8> :cnext<CR>
map <S-F8> :cprev<CR>
"save
map <C-S> :wa<CR>
imap <C-S> <Esc>:wa<CR>

"copy/paste to other apps
map <C-INSERT> "+y
imap <C-INSERT> <ESC>"+y
map <S-INSERT> "+gP
imap <S-INSERT> <ESC>"+gP

"insert line above while in insert mode
imap <M-o> <Esc>O

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

" Emacs (blasphemy!) shortcuts for cmd line editing
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>
cnoremap <M-BS> <C-W>
cnoremap <M-d> <S-Right><C-W>

" move up/down by visible lines instead of file lines
nnoremap j gj
nnoremap k gk
nnoremap ^ g^
nnoremap <HOME> g^
nnoremap $ g$
nnoremap <END> g$

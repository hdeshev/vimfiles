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
map <F8> :cnext<CR>
map <S-F8> :cprev<CR>
"save
map <C-S> :w<CR>
imap <C-S> <Esc>:w<CR>

"copy/paste to other apps
map <C-INSERT> "+y
map <S-INSERT> "+gP

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

" move up/down by visible lines instead of file lines
nnoremap j gj
nnoremap k gk
nnoremap ^ g^
nnoremap <HOME> g^
nnoremap $ g$
nnoremap <END> g$

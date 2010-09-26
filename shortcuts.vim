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
map <F8> :cnext<CR>
map <S-F8> :cprev<CR>
"save
map <C-S> :w<CR>
imap <C-S> <Esc>:w<CR>

map <F12> :set filetype=xml<CR>
map <S-F12> :set filetype=html<CR>
map <F11> :set filetype=cs<CR>
map <S-F11> :set filetype=vb<CR>

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

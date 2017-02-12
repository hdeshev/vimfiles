function! js#HideJS()
    set wildignore+='*.js'
    set wildignore+='*.js.map'

    let g:NERDTreeIgnore+=['\.js$']
    let g:NERDTreeIgnore+=['\.js\.map$']
endfunction

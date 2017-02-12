function! tools#Rename() range
    let l:what = input("Rename what: ", "", "tag")
    let l:to = input("Rename to: ", what, "tag")

    execute a:firstline . "," . a:lastline ."s/\\<" . l:what . "\\>/" . l:to . "/gc"
endfunction

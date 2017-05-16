" Used mostly to set my target session:window and a 'run tests' command

let g:TmuxTarget = "0"
let g:TmuxRunTestsCommand = "last_test"

fun! s:TmuxRunTests()
    exec ":wa"
    let tmux_cmd = ":silent !tmux send-keys -t " . g:TmuxTarget . " '" . g:TmuxRunTestsCommand . "' c-m"
    exec tmux_cmd
    redraw!
endfun

command! -nargs=0 TmuxRunTests call s:TmuxRunTests()

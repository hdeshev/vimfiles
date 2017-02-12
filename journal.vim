fun! s:GoToJournalDir(journal)
    let journalPath = '~/Dropbox/journal/' . a:journal
    echo journalPath
    exec 'cd ' . journalPath
    NERDTreeCWD
endfun

fun! s:ListJournals(argLead,cmdLine,P)
    return ['work', 'personal']
endfun

command! -complete=customlist,s:ListJournals -nargs=1 Journal call s:GoToJournalDir(<q-args>)

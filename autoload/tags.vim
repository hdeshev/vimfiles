function! tags#GenerateTags()
    let l:ctagsCmd = "ctags -R"
    " use .ctags-exclude in the current dir if it exists
	if getfperm(".run-ctags") != ""
        let l:ctagsCmd = "sh .run-ctags"
	endif
	if getfperm(".ctags-exclude") != ""
        let l:ctagsCmd = l:ctagsCmd . " --exclude=@.ctags-exclude"
	endif
	if getfperm(".ctags_exclude") != ""
        let l:ctagsCmd = l:ctagsCmd . " --exclude=@.ctags_exclude"
	endif
	if getfperm("Gemfile") != ""
        let l:ctagsCmd = l:ctagsCmd . " --exclude=vendor --exclude='*.min.js' --exclude=db/migrate --exclude=log --exclude=tmp"
	endif
    echo "Generating tags: " . l:ctagsCmd
    call system(l:ctagsCmd)
endfunction

function! tags#GenerateTags()
    let l:ctagsCmd = "ctags -R"
    " use .ctags-exclude in the current dir if it exists
	if getfperm(".ctags-exclude") != ""
        let l:ctagsCmd = l:ctagsCmd . " --exclude=@.ctags-exclude"
	endif
	if getfperm(".ctags_exclude") != ""
        let l:ctagsCmd = l:ctagsCmd . " --exclude=@.ctags_exclude"
	endif
    echo "Generating tags: " . l:ctagsCmd
    call system(l:ctagsCmd)
endfunction

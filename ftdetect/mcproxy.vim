function! SetFileTypeMcproxy()
    let l = 1
    let max_scan_line = 1000
    while l < line("$") && l < max_scan_line  
        if getline(l) =~ '\vpinstance.*\=\=\>'
            setfiletype mcproxy 
            return
        endif
        let l = l + 1
    endwhile 
endfunction

autocmd BufNewFile,BufRead *.conf call SetFileTypeMcproxy()

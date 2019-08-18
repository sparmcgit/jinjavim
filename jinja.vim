" Script to help in jinja programming
" Martin Häggström 190817
"

" Add for loop
function s:Jfor()
    execute "normal i\{\% for \%\}\n\<Esc>"
    execute "normal i\{\% endfor \%\}\<Esc>"
endfunction

" Add if conditional
function s:Jif()
    execute "normal i\{\% if \%\}\n\<Esc>"
    execute "normal i\{\% endif \%\}\n\<Esc>"
endfunction

" Add macro
function s:Jma()
    execute "normal i\{\% macro \%\}\n\<Esc>"
    execute "normal i\{\% endmacro \%\}\n\<Esc>"
endfunction

if !exists(":Jf")
    command Jf :call s:Jfor()
endif

if !exists(":Jif")
    command Jif :call s:Jif()
endif

if !exists(":Jma")
    command Jma :call s:Jma()
endif

" Script to help in jinja programming
" Martin Häggström 190817
"

function s:JinjaCommand(name)
    execute "normal i\{\% " . a:name . " \%\}\n\<Esc>"
    execute "normal i\{\% end" . a:name . " \%\}\n\<Esc>"
endfunction

if !exists(":Jf")
    command Jf :call s:JinjaCommand("for")
endif

if !exists(":Jif")
    command Jif :call s:JinjaCommand("if")
endif

if !exists(":Jma")
    command Jma :call s:JinjaCommand("macro")
endif

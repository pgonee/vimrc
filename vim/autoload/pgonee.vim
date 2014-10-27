
function! pgonee#init()
endfunction

function! pgonee#column80()
    if exists('+colorcolumn')
        setlocal colorcolumn=80
    else
        match OverLength /\%81v.\+/
    endif
endfunction

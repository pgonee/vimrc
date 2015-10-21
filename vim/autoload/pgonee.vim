
function! pgonee#init()
endfunction

function! pgonee#column80()
    if exists('+colorcolumn')
        setlocal colorcolumn=80
    else
        match OverLength /\%81v.\+/
    endif
endfunction

function! pgonee#column120()
    if exists('+colorcolumn')
        setlocal colorcolumn=120
    else
        match OverLength /\%121v.\+/
    endif
endfunction

function! pgonee#column100()
    if exists('+colorcolumn')
        setlocal colorcolumn=100
    else
        match OverLength /\%101v.\+/
    endif
endfunction

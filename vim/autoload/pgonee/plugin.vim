
function! pgonee#plugin#exists(name)
    if !exists("g:pgonee_plugins")
        return 0
    endif
    return index(g:pgonee_plugins, a:name) >= 0
endfunction

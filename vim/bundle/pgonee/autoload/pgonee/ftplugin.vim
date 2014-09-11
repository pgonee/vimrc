
function! pgonee#ftplugin#start()
    if exists('b:pgonee_did_ftplugin')
        return 1
    endif
    let b:pgonee_did_ftplugin = 1
    return 0
endfunction

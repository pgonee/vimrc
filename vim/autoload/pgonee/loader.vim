
function! pgonee#loader#start()
    if !exists("g:pgonee_plugins")
        return
    endif

    set nocompatible
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    for plugin in g:pgonee_plugins
        execute "Plugin '" . plugin . "'"
    endfor

    call vundle#end()
    filetype plugin indent on
endfunction


if pgonee#ftplugin#start()
    finish
endif

setlocal ts=4 sw=4 sts=4

call pgonee#column80()

if pgonee#plugin#exists("Syntastic")
    let g:syntastic_python_checkers=['']
endif


if pgonee#ftplugin#start()
    finish
endif

setlocal ts=2 sw=2 sts=2
let $JS_CMD = 'node'
let b:javascript_fold = 0

call pgonee#column80()

if pgonee#plugin#exists("Syntastic")
    let g:syntastic_javascript_checkers=['jshint']
endif

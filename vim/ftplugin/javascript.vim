
if pgonee#ftplugin#start()
    finish
endif

setlocal ts=2 sw=2 sts=2
let $JS_CMD = 'node'
let b:javascript_fold = 0
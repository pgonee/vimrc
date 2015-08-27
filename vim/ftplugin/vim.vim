
let b:syntastic_skip_checks = 0
if pgonee#ftplugin#start()
    finish
endif

setlocal foldmethod=marker

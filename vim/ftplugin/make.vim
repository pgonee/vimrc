
let b:syntastic_skip_checks = 0
if pgonee#ftplugin#start()
    finish
endif

setlocal ts=4 sw=4 sts=4 noet

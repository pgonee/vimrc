
if pgonee#ftplugin#start()
    finish
endif

setlocal ts=4 sw=4 sts=4

" fatih/vim-go settings {{{
if pgonee#plugin#exists("fatih/vim-go")
    let g:go_fmt_autosave = 0

    nmap <localleader>f :GoFmt<CR>
    nmap <localleader>r <Plug>(go-run)
    nmap <localleader>b <Plug>(go-build)
    nmap <localleader>T <Plug>(go-test)
    nmap <localleader>i <Plug>(go-info)
    nmap <localleader>d <Plug>(go-doc-vertical)
    nmap <localleader>b <Plug>(go-doc-browser)
    nmap <localleader>j <Plug>(go-def-vertical)
endif
" }}}

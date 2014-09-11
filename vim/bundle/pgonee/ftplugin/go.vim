
if pgonee#ftplugin#start()
    finish
endif

setlocal ts=4 sw=4 sts=4

" fatih/vim-go settings {{{
if pgonee#plugin#exists("fatih/vim-go")
    let g:go_fmt_autosave = 0

    nnoremap <localleader>f :GoFmt<CR>
    nnoremap <localleader>r <Plug>(go-run)
    nnoremap <localleader>b <Plug>(go-build)
    nnoremap <localleader>T <Plug>(go-test)
    nnoremap <localleader>i <Plug>(go-info)
    nnoremap <localleader>d <Plug>(go-doc-vertical)
    nnoremap <localleader>b <Plug>(go-doc-browser)
    nnoremap <localleader>j <Plug>(go-def-vertical)
endif
" }}}

let b:syntastic_skip_checks = 0
setlocal ts=4 sw=4 sts=4

" fatih/vim-go settings
nmap <localleader>f :GoFmt<CR>
nmap <localleader>r <Plug>(go-run)
nmap <localleader>b <Plug>(go-build)
nmap <localleader>T <Plug>(go-test)
nmap <localleader>i <Plug>(go-info)
nmap <localleader>d <Plug>(go-doc-vertical)
nmap <localleader>b <Plug>(go-doc-browser)
nmap <localleader>j <Plug>(go-def-vertical)

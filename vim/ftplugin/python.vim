
if pgonee#ftplugin#start()
    finish
endif

setlocal ts=4 sw=4 sts=4

if pgonee#plugin#exists("Syntastic")
    let g:syntastic_python_checkers=['flake8']
endif

if pgonee#plugin#exists("klen/python-mode")
    let g:pymode_folding = 0
    let g:pymode_motion = 0
    
    let g:pymode_run_bind = '<localleader>r'
    let g:pymode_breakpoint_bind = '<localleader>b'

    let g:pymode_lint = 0
    let g:pymode_lint_on_write = 0

    nnoremap <C-c>g <Nop>
    nnoremap <localleader>j :RopeGotoDefinition<CR>
    nnoremap <localleader>_lintauto :PymodeLintAuto<CR>
endif

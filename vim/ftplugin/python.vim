
if pgonee#ftplugin#start()
    finish
endif

setlocal ts=4 sw=4 sts=4

call pgonee#column80()

if pgonee#plugin#exists("Syntastic")
    let g:syntastic_python_checkers=['flake8']
endif

if pgonee#plugin#exists("klen/python-mode")
    let g:pymode_folding = 0
    let g:pymode_motion = 0
    
    let g:pymode_run_bind = '<localleader>r'
    let g:pymode_breakpoint_bind = '<localleader>b'
    let g:pymode_rope_goto_definition_bind = '<localleader>j'
    
    let g:pymode_rope_rename_bind = '<localleader>RE'
    let g:pymode_rope_rename_module_bind = '<localleader>RM'
    let g:pymode_rope_autoimport_bind = '<localleader>AI'
    let g:pymode_rope_organize_imports_bind = '<localleader>OI'

    let g:pymode_lint = 0
    let g:pymode_rope_completion = 0
    let g:pymode_options = 0

    " pymode_options 참고
    setlocal complete+=t
    setlocal formatoptions-=t
    if v:version > 702 && !&relativenumber
        setlocal number
    endif
    setlocal textwidth=79
    setlocal commentstring=#%s
    setlocal define=^\s*\\(def\\\\|class\\)
endif

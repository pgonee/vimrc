
" Base configurations {{{
runtime! bundle/cmdalias.vim/plugin/cmdalias.vim

"colorscheme ir_black
colorscheme jellybeans

syntax on

set nu
set expandtab
set tabstop=4 shiftwidth=4 sts=4
set autoindent
set fileformat=unix
set backspace=2
set modeline
set encoding=utf-8 fileencodings=utf-8,cp949,ucs-bom,korea,iso-2022-kr
set mouse+=a
if &term =~ '^screen'
    set ttymouse=xterm2
endif
set showmatch
set scrolloff=3

set hlsearch
highlight Search ctermbg=darkgray ctermfg=white guibg=blue guifg=white
highlight colorcolumn guibg=red ctermbg=red
highlight OverLength ctermbg=red ctermfg=white guifg=white guibg=red
highlight SpellBad guibg=red guifg=white

set lazyredraw
set ttyfast

if has("gui_running")
    set imd
    set guifont=Inconsolata\ Bold\ 20

    set guioptions-=T
    set guioptions-=m

    set mouse+=a
endif

if has("gui_macvim")
    set guifont=Inconsolata:h20.00
    set guioptions=egmrLt

    set vb
    set eb
endif 
" }}}

" The-NERD-tree settings {{{
if pgonee#plugin#exists("The-NERD-tree")
    let NERDTreeIgnore = ['\.pyc$', '\.class$', '\.so$', '\.swp$', '__pycache__$']
endif
" }}}

" ctrlp.vim settings {{{
if pgonee#plugin#exists("ctrlp.vim")
    let g:ctrlp_custom_ignore = '\v(__pycache__|node_modules|[\/]\.(git|hg|svn|pyc))$'
endif 
" }}}

" Syntastic settings {{{
if pgonee#plugin#exists("Syntastic")
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    let g:syntastic_python_checkers=['flake8']
    let g:syntastic_javascript_checkers=['eslint']

endif
" }}}

" YCM settings {{{
if pgonee#plugin#exists("Valloric/YouCompleteMe")
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_collect_identifiers_from_tags_files = 1
    let g:ycm_autoclose_preview_window_after_completion = 1
    let g:ycm_autoclose_preview_window_after_insertion = 1
endif
" }}}

" mxw/vim-jsx settings {{{
if pgonee#plugin#exists("mxw/vim-jsx")
    let g:jsx_ext_required = 0
endif
" }}}

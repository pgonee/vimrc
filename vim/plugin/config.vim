
" Base configurations {{{
runtime! bundle/cmdalias.vim/plugin/cmdalias.vim

"colorscheme ir_black

colorscheme jellybeans

"colorscheme badwolf

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

set hlsearch
hi Search  ctermbg=gray ctermfg=blue

if exists('+colorcolumn')
    set colorcolumn=80
else
    highlight OverLength ctermbg=red ctermfg=white guifg=white guibg=red
    match OverLength /\%81v.\+/
endif

if has("gui_running")
    set imd
    set guifont=Inconsolata\ Bold\ 14

    set guioptions-=T
    set guioptions-=m
    highlight SpellBad guibg=red guifg=white
    hi Search guibg=gray guifg=blue
endif

if has("gui_macvim")
    set guifont=Inconsolata:h16.00
    set guioptions=egmrLt

    set vb
    set eb
endif 
" }}}

" The-NERD-tree settings {{{
if pgonee#plugin#exists("The-NERD-tree")
    let NERDTreeIgnore = ['\.pyc$', '\.class$', '\.so$', '\.swp$']
endif
" }}}

" ctrlp.vim settings {{{
if pgonee#plugin#exists("ctrlp.vim")
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
endif 
" }}}

" Valloric/YouCompleteMe settings {{{
if pgonee#plugin#exists("Valloric/YouCompleteMe")
    let g:ycm_add_preview_to_completeopt = 0
    let g:ycm_autoclose_preview_window_after_completion = 1
    let g:ycm_autoclose_preview_window_after_insertion = 0
    let g:ycm_goto_buffer_command = 'new-tab'
endif
" }}}

" Syntastic settings {{{
if pgonee#plugin#exists("Syntastic")
    let g:syntastic_check_on_open=1
    let g:syntastic_enable_signs=1
endif
" }}}

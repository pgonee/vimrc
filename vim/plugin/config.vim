
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
set scrolloff=10

set hlsearch
highlight Search ctermbg=darkgray ctermfg=white guibg=blue guifg=white
highlight colorcolumn guibg=red ctermbg=red
highlight OverLength ctermbg=red ctermfg=white guifg=white guibg=red
highlight SpellBad guibg=red guifg=white

if has("gui_running")
    set imd
    set guifont=Inconsolata\ Bold\ 16

    set guioptions-=T
    set guioptions-=m
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

    let g:ycm_collect_identifiers_from_tags_files = 1
    let g:ycm_use_ultisnips_completer = 1
    let g:ycm_seed_identifiers_with_syntax = 1
    let g:ycm_complete_in_comments = 1
    let g:ycm_complete_in_strings = 1
endif
" }}}

" Syntastic settings {{{
if pgonee#plugin#exists("Syntastic")
    let g:syntastic_check_on_open=1
    let g:syntastic_enable_signs=1
endif
" }}}

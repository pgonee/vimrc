
" Tab shortcuts {{{
nnoremap <localleader>tt :tabnew<CR>
nnoremap <localleader>tw :tabnext<CR>
nnoremap <localleader>tp :tabprev<CR>
" }}}

" Arrows & hjkl {{{
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
" }}}

" Nop middle mouse button {{{
nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>
inoremap <MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>
vnoremap <MiddleMouse> <Nop>
vnoremap <2-MiddleMouse> <Nop>
vnoremap <3-MiddleMouse> <Nop>
vnoremap <4-MiddleMouse> <Nop>
" }}}

" The-NERD-tree keymaps {{{
if pgonee#plugin#exists("The-NERD-tree")
    nnoremap <localleader>dd :NERDTree<CR>
endif
" }}}

" ctrlp.vim keymaps {{{
if pgonee#plugin#exists("ctrlp.vim")
    nnoremap <localleader>p :CtrlP<CR>
endif 
" }}}

" Valloric/YouCompleteMe keymaps {{{
if pgonee#plugin#exists("Valloric/YouCompleteMe")
    nnoremap <localleader>j :YcmCompleter GoToDefinition<CR>
endif
" }}}

nnoremap <localleader>] :let @/ = ""<CR>
nnoremap <localleader>s :w<CR>
nnoremap <localleader>q :q<CR>
vnoremap <localleader>c "+y
vnoremap <localleader>v "+gP

"vundle setting
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" base
Plugin 'gmarik/vundle'
Plugin 'L9'
Plugin 'pathogen.vim'
Plugin 'cmdalias.vim'

" Utilities
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'fugitive.vim'
Plugin 'ctrlp.vim'
Plugin 'Gundo'
Plugin 'Syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'

" Language
"Plugin 'fatih/vim-go'
Plugin 'c.vim'
Plugin 'Jinja'
Plugin 'Markdown'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-flake8'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'

" color
Plugin 'jellybeans.vim'

call vundle#end()
filetype plugin indent on
" vundle setting ---

colorscheme ir_black
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

au FileType cpp    setl ts=4 sw=4 sts=4
au FileType yaml   setl ts=2 sw=2 sts=2
au FileType html   setl ts=2 sw=2 sts=2
au FileType javascript setl ts=2 sw=2 sts=2
au FileType coffee setl ts=2 sw=2 sts=2
au FileType jade setl ts=2 sw=2 sts=2
au FileType jinja  setl ts=2 sw=2 sts=2
au FileType htmldjango setl ts=2 sw=2 sts=2
au FileType make   setl ts=4 sw=4 sts=4 noet

au BufRead,BufNewFile *.go set filetype=go
au FileType go setl ts=4 sw=4 sts=4

"setlocal spell spelllang=en_us

if has("gui_running")
    set imd
    set guifont=Inconsolata\ Bold\ 14

    colorscheme ir_black

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

set hlsearch
hi Search  ctermbg=gray ctermfg=blue

if exists('+colorcolumn')
    set colorcolumn=100
else
    highlight OverLength ctermbg=red ctermfg=white guifg=white guibg=red
    match OverLength /\%101v.\+/
endif

let $JS_CMD='node'
let NERDTreeIgnore = ['\.pyc$', '\.class$']
let g:gitgutter_enabled = 1

runtime! bundle/cmdalias.vim/plugin/cmdalias.vim

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc    " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:syntastic_python_checkers=['flake8']
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

let b:javascript_fold = 0

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_goto_buffer_command = 'new-tab'

nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>tw :tabnext<CR>
nnoremap <leader>tp :tabprev<CR>
nnoremap <leader>] :let @/ = ""<CR>
nnoremap <leader>dd :NERDTree<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>p :CtrlP<CR>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
inoremap <c-h> <esc>ha
inoremap <c-j> <esc>ja
inoremap <c-k> <esc>ka
inoremap <c-l> <esc>la
vnoremap <leader>c "+y
vnoremap <leader>v "+gP

nnoremap <MiddleMouse> <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>
inoremap <MiddleMouse> <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>

map <leader>j :YcmCompleter GoToDefinition<CR>

let g:go_fmt_autosave = 0
au FileType go nmap <leader>f :GoFmt<CR>
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>T <Plug>(go-test)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>d <Plug>(go-doc-vertical)
au FileType go nmap <leader>b <Plug>(go-doc-browser)
au FileType go nmap <leader>j <Plug>(go-def-vertical)

let g:airline#extensions#tabline#enabled = 1

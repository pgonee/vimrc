"vundle setting
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'cmdalias.vim'
Bundle 'EasyMotion'
Bundle 'fugitive.vim'
Bundle 'pyflakes.vim'
Bundle 'vim-flake8'
Bundle 'jslint.vim'

Bundle 'pathogen.vim'

Bundle 'python.vim'
Bundle 'JavaScript-syntax'
Bundle 'go.vim'
Bundle 'cpp.vim'
Bundle 'c.vim'
Bundle 'mako.vim'
Bundle 'Jinja'
Bundle 'Markdown'

Bundle 'ZenCoding.vim'
Bundle 'airblade/vim-gitgutter'

Bundle 'AutoComplPop'

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
set mouse=a

au FileType cpp    setl ts=4 sw=4 sts=4
au FileType yaml   setl ts=2 sw=2 sts=2
au FileType html   setl ts=2 sw=2 sts=2
au FileType javascript setl ts=2 sw=2 sts=2
au FileType make   setl ts=4 sw=4 sts=4 noet

au BufRead,BufNewFile *.go set filetype=go
au FileType go setl ts=4 sw=4 sts=4

"setlocal spell spelllang=en_us

if has("gui_running")
  set imd
  set guifont=DejaVuSansMono\ 14
  colorscheme ir_black
  set guioptions-=T
  set guioptions-=m
  highlight SpellBad guibg=red guifg=white
  hi Search guibg=gray guifg=blue
endif

if has("gui_macvim")
  set guifont=DejaVuSansMono:h14.00
  set transparency=0
  set guioptions=egmrLt
endif

set hlsearch
hi Search  ctermbg=gray ctermfg=blue

highlight OverLength ctermbg=red ctermfg=white guifg=white guibg=red
match OverLength /\%81v.\+/
"autocmd BufNewFile,BufRead *.py match OverLength /\%81v.\+/

let $JS_CMD='node'
let NERDTreeIgnore = ['\.pyc$', '\.class$']
let g:gitgutter_enabled = 1
runtime! bundle/cmdalias.vim/plugin/cmdalias.vim

nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>tw :tabnext<CR>
nnoremap <leader>c :let @/ = ""<CR>
nnoremap <leader>d :NERDTree<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w <ESC><C-w>w
nnoremap <leader>p <ESC><C-w>p
nnoremap <leader>a i

function! SearchDash()
  let s:browser = "/usr/bin/open"
  let s:searchString = getline("'<")[getpos("'<")[2]-1:getpos("'>")[2]-1]
  let s:url = "\"dash://".s:searchString."\""
  let s:cmd = "silent ! " . s:browser . " " . s:url
  execute s:cmd
  redraw!
endfunction
map <leader><leader>d :call SearchDash()<CR>

function! SearchGoogle()
  let s:browser = "/usr/bin/open"
  let s:searchString = getline("'<")[getpos("'<")[2]-1:getpos("'>")[2]-1]
  let s:url = "\"http://www.google.co.kr/search?q=".s:searchString."\""
  let s:cmd = "silent ! " . s:browser . " " . s:url
  execute s:cmd
  redraw!
endfunction
map <leader><leader>g :call SearchGoogle()<CR>

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

filetype plugin indent on

" vundle setting ---

"Default color scheme
colorscheme desert
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

" Tab setting
au FileType cpp    setl ts=4 sw=4 sts=4
au FileType yaml   setl ts=2 sw=2 sts=2
au FileType html   setl ts=2 sw=2 sts=2
au FileType javascript setl ts=2 sw=2 sts=2
au FileType make   setl ts=4 sw=4 sts=4 noet

au BufRead,BufNewFile *.go set filetype=go
au FileType go setl ts=4 sw=4 sts=4

"English spelling checker.
"setlocal spell spelllang=en_us

"GUI Vim configurations.
if has("gui_running")
  set imd
  "set guifont=NanumGothicCoding\ 14
  set guifont=DejaVuSansMono\ 14
  colorscheme ir_black
  set guioptions-=T
  set guioptions-=m
  highlight SpellBad guibg=red guifg=white
  hi Search guibg=green guifg=red
endif

"MacVim-specific configurations.
if has("gui_macvim")
  " I prefer NanumGothicCoding as a coding font in MacVim.
  "set guifont=NanumGothicCoding:h16.00
  set guifont=DejaVuSansMono:h14.00
  set transparency=0
  set guioptions=egmrLt
endif

" search highlight
set hlsearch
hi Search  ctermbg=green ctermfg=red

""" columns > 80 highlight
highlight OverLength ctermbg=red ctermfg=white guifg=white guibg=red
"match OverLength /\%81v.\+/
autocmd BufNewFile,BufRead *.py match OverLength /\%81v.\+/

" plugins setting
let $JS_CMD='node'
let NERDTreeIgnore = ['\.pyc$', '\.class$']
let g:gitgutter_enabled = 1
runtime! bundle/cmdalias.vim/plugin/cmdalias.vim
call CmdAlias('tn', 'tabnew')
call CmdAlias('tc', 'tabclose')
call CmdAlias('tree', 'NERDTree')
call CmdAlias('log', 'Glog')
call CmdAlias('status', 'Gstatus')
call CmdAlias('diff', 'Gsdiff')

function! SetColorScheme(cs)
    execute "colorscheme ".a:cs
    execute "highlight SpellBad guibg=red guifg=white"
    execute "hi Search guibg=green guifg=red"
    execute "set hlsearch"
    execute "hi Search  ctermbg=green ctermfg=red"
    execute "highlight OverLength ctermbg=red ctermfg=white guifg=white guibg=red"
    execute "autocmd BufNewFile,BufRead *.py match OverLength /\%81v.\+/"
endfunction

" shortcuts
nnoremap <C-t> :tabnext<CR>
nnoremap <leader><leader>c :let @/ = ""<CR>
nnoremap <leader><leader>1 :call SetColorScheme("ir_black")<CR>
nnoremap <leader><leader>2 :call SetColorScheme("blackdust")<CR>
nnoremap <leader><leader>3 :call SetColorScheme("corporation")<CR>
nnoremap <leader><leader>4 :call SetColorScheme("jellybeans")<CR>
nnoremap <leader><leader>5 :call SetColorScheme("molokai")<CR>
nnoremap <leader><leader>6 :call SetColorScheme("github")<CR>
nnoremap <leader><leader>nt :NERDTree<CR>
nnoremap <leader><leader>s :w<CR>
nnoremap <leader><leader>x :x<CR>
nnoremap <leader><leader>q :q<CR>

" Etc.
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

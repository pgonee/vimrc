
set rtp+=~/.vim/loader.vim
let g:pgonee_plugins = [
            \"gmarik/vundle",
            \"pathogen.vim",
            \"L9",
            \"cmdalias.vim",
            \"The-NERD-tree",
            \"The-NERD-Commenter",
            \"fugitive.vim",
            \"ctrlp.vim",
            \"Gundo",
            \"Syntastic",
            \"Valloric/YouCompleteMe",
            \"bling/vim-airline",
            \"tpope/vim-surround",
            \"mattn/emmet-vim",
            \"fatih/vim-go",
            \"c.vim",
            \"pangloss/vim-javascript",
            \"kchmck/vim-coffee-script",
            \"Jinja",
            \"Markdown",
            \"groenewege/vim-less",
            \"digitaltoad/vim-jade",
            \"vim-flake8",
            \"jellybeans.vim",
            \"pgonee"
            \]

call pgonee#loader#start()
call pgonee#init()


OS = $(shell uname)

FONT_PATH = unknown
ifeq ($(OS),Darwin)
	FONT_PATH = ~/Library/Fonts/
else
	FONT_PATH = ~/.fonts/
endif

link:
	ln -sf `pwd`/vimrc $$HOME/.vimrc
	ln -sf `pwd`/vim $$HOME/.vim

unlink:
	rm -rf $$HOME/.vim 
	rm -rf $$HOME/.vimrc

install: link download_fonts install_vundle install_ycm etc

uninstall: unlink
	rm -rf ./vim/bundle/Vundle.vim

clean: uninstall

download_fonts:
ifneq ($(FONT_PATH), unknown)
	wget "http://levien.com/type/myfonts/Inconsolata.otf"
	mv ./Inconsolata.otf $(FONT_PATH)
else
	echo "Unknown font path, uname is $(OS), path is $(FONT_PATH)"
endif

install_vundle:
	git clone https://github.com/gmarik/Vundle.vim.git ./vim/bundle/Vundle.vim
	vim +PluginInstall +qall

install_ycm:
	cd ./vim/bundle/YouCompleteMe && ./install.sh --clang-completer --system-libclang

etc:
	git config --global core.editor "vim"

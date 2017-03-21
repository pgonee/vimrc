link:
	ln -sf `pwd`/vimrc $$HOME/.vimrc
	ln -sf `pwd`/vim $$HOME/.vim

unlink:
	rm -rf $$HOME/.vim 
	rm -rf $$HOME/.vimrc

install: link install_plug etc

install_term: link install_plug etc

install_term: link install_plug etc

uninstall: unlink
	rm -rf ./vim/bundle/Vundle.vim

clean: uninstall

install_plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	vim +PlugInstall +qall

etc:
	git config --global core.editor "vim"

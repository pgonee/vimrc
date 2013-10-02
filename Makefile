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

install: link download_fonts install_vundle etc

uninstall: unlink

clean: uninstall

download_fonts:
ifneq ($(FONT_PATH), unknown)
	mkdir -p $(FONT_PATH)
	wget "http://downloads.sourceforge.net/project/dejavu/dejavu/2.34/dejavu-fonts-ttf-2.34.zip?r=http%3A%2F%2Fdejavu-fonts.org%2Fwiki%2FDownload&ts=1380695998&use_mirror=jaist" -O font.zip
	mkdir -p ./fonts
	unzip font.zip -d ./fonts
	mv ./fonts/*/* ./fonts
	cp -R ./fonts/ttf/*.ttf $(FONT_PATH)
	rm -rf ./fonts
	rm -rf ./font.zip
else
	echo "Unknown font path, uname is $(OS), path is $(FONT_PATH)"
endif

install_vundle:
	git submodule init
	git submodule update
	vim +BundleInstall +qall

etc:
	git config --global core.editor "vim"


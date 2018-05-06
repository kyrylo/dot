update-emacs:
	cd ~/.emacs.d && cask install
	rm -rf ~/.emacs.d/elpa
	ln -s ~/.emacs.d/.cask/**/elpa ~/.emacs.d
update-submodules:
	git submodule foreach git pull origin master
install:
	./install.sh

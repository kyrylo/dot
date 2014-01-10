emacs:
	cd emacs.d && cask install
	rm ~/.emacs.d/elpa
	ln -s ~/.emacs.d/.cask/**/elpa ~/.emacs.d

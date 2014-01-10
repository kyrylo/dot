emacs:
	cd emacs.d && cask install
	rm -f ~/.emacs.d/elpa
	ln -s ~/.emacs.d/.cask/**/elpa ~/.emacs.d

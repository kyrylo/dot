update-emacs:
	cd cfg/emacs.d && cask install
	rm -rf ~/.emacs.d/elpa
	ln -s ~/.emacs.d/.cask/**/elpa ~/.emacs.d
update-submodules:
	git submodule foreach git pull origin master
set-defaults:
	xdg-mime default chromium.desktop x-scheme-handler/http
	xdg-mime default chromium.desktop x-scheme-handler/https
	xdg-mime default okular.desktop application/pdf
	xdg-mime default dolphin.desktop inode/directory
cleanup:
	rm -rf tmp
deploy-cfg:
	cd cfg && ./cfg.build

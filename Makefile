update-emacs:
	cd cfg/emacs.d && cask install
	rm -f ~/.emacs.d/elpa
	ln -s ~/.emacs.d/.cask/**/elpa ~/.emacs.d
update-submodules:
	git submodule foreach git pull origin master
set-defaults:
	xdg-mime default opera.desktop x-scheme-handler/http
	xdg-mime default opera.desktop x-scheme-handler/https
	xdg-mime default zathura.desktop application/pdf
	xdg-mime default nautilus.desktop inode/directory
install-packages:
	sudo pacman -Sy
	yes | sudo xargs -a arch-packages/bootstrap.packages pacman -S --needed
	yes | sudo xargs -a arch-packages/default.packages pacman -S --needed
	./arch-packages/aura.build
	yes | sudo xargs -a arch-packages/aur.packages aura -A
	sudo xargs -a arch-packages/nodejs.packages npm -g install
cleanup:
	rm -r tmp
deploy-cfg:
	cd cfg && ./cfg.build

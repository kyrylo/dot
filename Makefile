update-emacs:
	cd cfg/emacs.d && cask install
	rm -f ~/.emacs.d/elpa
	ln -s ~/.emacs.d/.cask/**/elpa ~/.emacs.d
update-submodules:
	git submodule foreach git pull origin master
set-defaults:
	xdg-mime default chromium.desktop x-scheme-handler/http
	xdg-mime default chromium.desktop x-scheme-handler/https
	xdg-mime default zathura.desktop application/pdf
	xdg-mime default nautilus.desktop inode/directory
install-packages:
	sudo pacman -Sy
	yes | sudo xargs -a arch-packages/bootstrap.packages pacman -S --needed
	yes | sudo xargs -a arch-packages/default.packages pacman -S --needed
	(echo -ne '\n'; yes) | sudo xargs -a arch-packages/default-composite.packages pacman -S --needed
	./arch-packages/aura.build
	yes | sudo xargs -a arch-packages/aur.packages aura -A --needed
	./pkgbuilds/pkgbuilds.build
	sudo xargs -a arch-packages/nodejs.packages npm -g install
	xargs -a arch-packages/rubygems.packages gem install
cleanup:
	rm -rf tmp
deploy-cfg:
	cd cfg && ./cfg.build

#!/usr/bin/env sh
# Kyrylo Silin -->
#                 https://github.com/kyrylo/dot
#                                              <-- kyrylosilin@gmail.com
echo 'Deploying your assets...'
mkdir -p ~/.dot_backup

backup_file()
{
  echo $2
  if [[ -e $2 ]]; then
    cp --no-dereference $2 ~/.dot_backup
    rm $2
  fi

  ln -s $PWD/$1 $2
}

backup_dir()
{
  if [[ -e $2 ]]; then
    cp -r $2 ~/.dot_backup
    rm -rf $2
  fi

  ln -s $PWD/$1 $2
}

mkdir -p ~/.config/subtle/
mkdir -p ~/.bin/
mkdir -p ~/.ncmpcpp/
mkdir -p ~/.elinks/
mkdir -p ~/.teamocil/
mkdir -p ~/.weechat/{perl,python}/autoload

backup_file ackrc            ~/.ackrc
backup_file gemrc            ~/.gemrc
backup_file pryrc            ~/.pryrc
backup_file gitconfig        ~/.gitconfig
backup_file gvimrc           ~/.gvimrc
backup_file vimrc            ~/.vimrc
backup_file tmux.conf        ~/.tmux.conf
backup_file xbindkeysrc      ~/.xbindkeysrc
backup_file xinitrc          ~/.xinitrc
backup_file Xresources       ~/.Xresources
backup_file zshrc.sh         ~/.zshrc
backup_file ncmpcpp.conf     ~/.ncmpcpp/config
backup_file elinks.conf      ~/.elinks/elinks.conf
backup_file teamocil.run.yml ~/.teamocil/run.yml
backup_file subtle.rb        ~/.config/subtle/subtle.rb
backup_file jshintrc         ~/.jshintrc
backup_file gdbinit          ~/.gdbinit

for conf in weechat/*.conf; do
  backup_file $conf ~/.$conf
done

backup_file weechat/perl/autoload/buffers.pl ~/.weechat/perl/autoload/buffers.pl
backup_file weechat/perl/autoload/multiline.pl ~/.weechat/perl/autoload/multiline.pl
backup_file weechat/python/autoload/shell.py ~/.weechat/python/autoload/shell.py
backup_file weechat/python/autoload/colorize_nicks.py ~/.weechat/python/autoload/colorize_nicks.py

backup_dir zsh/     ~/.zsh
backup_dir vim      ~/.vim
backup_dir fonts    ~/.fonts
backup_dir emacs.d  ~/.emacs.d
backup_dir icons    ~/.config/subtle/icons

echo 'Done!'

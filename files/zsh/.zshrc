. ~/.zsh/rc.sh

#
# PATHS
#

export PATH="/bin:$PATH"

# Custom executables.
export PATH="$HOME/.bin:$PATH"

# System executables.
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Custom Git aliases.
export PATH="$HOME/.git-aliae/bin:$PATH"
export PATH="$HOME/.git-aliae/wip:$PATH"

# Cask (http://cask.github.io)
export PATH="$HOME/.cask/bin:$PATH"

# Golang.
export GOPATH="$HOME/Code/gocode"
export PATH="$PATH:$GOPATH/bin"
export GOAB_DIR="$GOPATH/src/github.com/airbrake/goab"

# Rustup
export PATH="$HOME/.cargo/bin:$PATH"

# Node.js
export PATH="/usr/local/opt/node@8/bin:$PATH"

#
# ALIASES
#

e() { emacs $1 2&>/dev/null & }

case "$OSTYPE" in
  darwin*)
    alias ls='ls -F -G'
    ;;
  *)
    alias ls='ls -F --color'
    ;;
esac

alias ..='cd ..'
alias l='ls -lAh'
alias ll='ls -l'
alias gd='git diff && git diff --check'
alias gdc='git diff --cached && git diff --cached --check'
alias gc='git commit'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias ee='emacs -nw'
alias cp='cp -v'
alias mv='mv -v'
alias tmux='tmux -2'
alias ccat='pygmentize -g'

#
# COMPLETION
#

autoload -U compinit
compinit

# Matches case insensitive for lowercase.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Pasting with tabs doesn't perform completion.
zstyle ':completion:*' insert-tab pending

zstyle ':completion:*' list-separator '#'

#
# HIGHLIGHTING
#

case $OSTYPE in
    darwin*)
        . /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        ;;
    *)
        . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        ;;
esac

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

chruby 2.4.2

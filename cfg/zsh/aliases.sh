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

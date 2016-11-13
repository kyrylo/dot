export PATH="/bin:$PATH"

# Custom executables.
export PATH="$HOME/.bin:$PATH"

# System executables.
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Man pages.
export MANPATH="/usr/local/man:$MANPATH"

# Some k00 Git aliases.
export PATH="$HOME/.dot/cfg/submodules/git-aliae/bin:$PATH"
export PATH="$HOME/.dot/cfg/submodules/git-aliae/wip:$PATH"

# Cask (http://cask.github.io)
export PATH="$HOME/.cask/bin:$PATH"

# For Go imports.
export GOPATH="$HOME/Code/gocode"
export GOAB_DIR="$GOPATH/src/github.com/airbrake/goab"

export CDPATH="$CDPATH:$GOPATH/src/github.com"
export CDPATH="$CDPATH:$GOPATH/src/code.google.com"
export CDPATH="$CDPATH:$GOPATH/src/golang.org"
export CDPATH="$CDPATH:$GOPATH/src/gopkg.in"

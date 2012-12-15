# Kyrylo Silin -->
#                 https://github.com/kyrylo/dot
#                                              <-- kyrylosilin@gmail.com
# Custom executables.
export PATH="$HOME/.bin:$PATH"

# System executables.
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# RubyGems executables.
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.gem/ruby/1.9.1/bin:$PATH"
export PATH="$HOME/.gem/ruby/1.8/bin:$PATH"

# Man pages.
export MANPATH="/usr/local/man:$MANPATH"

# Some k00 Git aliases.
PATH="$HOME/.dot/git-aliae/bin:$PATH"
PATH="$HOME/.dot/git-aliae/wip:$PATH"

eval "$(rbenv init -)"

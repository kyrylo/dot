# Kyrylo Silin -->
#                 https://github.com/kyrylo/dot
#                                              <-- kyrylosilin@gmail.com
# Highlighting (solarized-like).
. /usr/share/zsh/plugins/zsh-syntax-highlight/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

ZSH_HIGHLIGHT_STYLES[default]='fg=61,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=64,bold,underline'
ZSH_HIGHLIGHT_STYLES[alias]='fg=61,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=61,bold,underline'
ZSH_HIGHLIGHT_STYLES[command]="fg=64,bold"
ZSH_HIGHLIGHT_STYLES[hashed-command]="fg=64,bold"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=64,bold"
ZSH_HIGHLIGHT_STYLES[path]='fg=61,bold'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=136,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=166,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=166,bold'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="fg=33,bold"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=33,bold"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=33,bold"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=33,bold"
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="fg=33,bold"
ZSH_HIGHLIGHT_STYLES[assign]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=green'

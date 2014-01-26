# Highlighting (solarized-like).
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

ZSH_HIGHLIGHT_STYLES[default]='fg=7'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=13,underline'
ZSH_HIGHLIGHT_STYLES[alias]='fg=14'
ZSH_HIGHLIGHT_STYLES[function]='fg=14'
ZSH_HIGHLIGHT_STYLES[command]="fg=14"
ZSH_HIGHLIGHT_STYLES[hashed-command]="fg=14"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=14"
ZSH_HIGHLIGHT_STYLES[path]='fg=9'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=136'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=13'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=13'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="fg=9"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=9"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=9"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=9"
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="fg=9"
ZSH_HIGHLIGHT_STYLES[assign]="fg=green"
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=green'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=2'

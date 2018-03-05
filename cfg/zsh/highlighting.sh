case $OSTYPE in
    darwin*)
        . /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        ;;
    *)
        . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        ;;
esac


ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

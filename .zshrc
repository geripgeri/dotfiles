# Source files
for f in $HOME/.config/zshrc.d/**/*.zsh; do
    source "${f}"
done

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

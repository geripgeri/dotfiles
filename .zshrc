# Source files
for f in $HOME/.config/zshrc.d/**/*.zsh; do
    . "${f}"
done

zmodload zsh/zpty
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

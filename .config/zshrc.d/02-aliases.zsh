alias v='nvim'
alias vim='nvim'
alias e='${EDITOR} $(fzf)'
alias mutt='neomutt'
alias t='tmux -f .config/tmux/tmux.conf'
alias cat='bat'
alias o='xdg-open'
alias mkdir='mkdir -p'
alias ls="ls -lah --color=auto"
alias nstat="netstat -ntlp | grep LISTEN"
alias pacman_clean_cache="sudo pacman -Sc --noconfirm"
alias get_bios_version="sudo dmidecode -t bios -q | grep Version"

alias gcm="git checkout master"
alias grom="git fetch origin && git rebase origin/master"
alias git_rev="git rev-parse --verify --short=11 HEAD"
alias git_rm_merged_branches="git branch --merged | egrep -v '(^\*|master|dev)' | xargs git branch -d"

alias vac='nvim ~/.config/awesome/rc.lua' 
alias vzsh='nvim ~/.zshrc'
alias vv='nvim ~/.config/nvim/init.vim'
alias cdd='cd ~/workspace/Personal/dotfiles'
alias cde='cd ~/workspace/Personal/ESPHome-configs'

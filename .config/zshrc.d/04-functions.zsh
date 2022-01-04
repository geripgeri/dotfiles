# Open nvim and shell inside tmux session.
function dev() {
    session=$(basename $(pwd | tr . _))
    tmux new-session -d -s $session
    tmux rename-window -t 0 "nvim"
    tmux send-keys -t "nvim" "nvim" C-m
    tmux new-window -t ${session}:1 -n "Shell"
    tmux attach-session -t ${session}:0
}

function ssh_rm_id() {
    sed -i "$1d" ~/.ssh/known_hosts
}

function f () {
    eval grep -RI --color=always "${excluded_dirs}" "${1}" . | sort
}

function find_large_files() {
    find $1 -xdev -type f -size +${2}M -exec du -h {} \; | sort -n
}

function psgrep() {
    ps axuf | grep -v grep | grep "$@" -i --color=auto;
}

function get_ip () {
    ip route get "$(ip route show to 0/0 | grep -oP '(?<=via )\S+')" | grep -oP '(?<=src )\S+'
}

function get_public_ip() {
    curl ifconfig.io/ip
}

function new_mail_count {
    find $HOME/.local/share/mail/*/*/new -type f | wc -l
}

function pacman_list_packages (){
    pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -h
}

function pacman_list_user_installed_packages (){
    comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq)
}

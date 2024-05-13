#!/bin/zsh

ip_address=$(ip addr show eth0 | awk '/inet / {print $2}' | cut -d'/' -f1)
gateway=$(ip route show dev eth0 | awk '/default via/ {print $3}')

if [ -z "$ip_address" ] || [ -z "$gateway" ]; then
    echo "Failed to get IP address or gateway of eth0"
fi
if [[ "${ip_address%%.*}" == "172" ]]; then
    proxy_gateway="${ip_address%.*}.1"
else
    proxy_gateway="127.0.0.1"
fi
export all_proxy="http://$proxy_gateway:7890"

export PATH="/usr/sbin:$PATH";
export PATH="/usr/lib/ccache/:$PATH"
export PATH="/opt/riscv64-unknown-elf-gcc-8.3.0-2020.04.1-x86_64-linux-ubuntu14/bin:$PATH"

alias vim="nvim"
alias cls="clear"

alias gp="git push"
alias gl="git pull"
alias ga="git commit -a -m"
alias gc="git checkout"

alias mr="make run"
alias md="make debug"
alias mc="make clean"

. "$HOME/.cargo/env"

if [ -z "$TMUX" ]; then
    tmux attach || tmux new-session
fi
if [ "$TMUX" == "" ]; then
    cd ~
fi
#!/bin/zsh

#if ip link show eth0 &> /dev/null; then
#    ip_address=$(ip addr show eth0 | awk '/inet / {print $2}' | cut -d'/' -f1)
#    gateway=$(ip route show dev eth0 | awk '/default via/ {print $3}')
#    if [[ "${ip_address%%.*}" == "172" ]]; then
#        proxy_gateway="${ip_address%.*}.1"
#    fi
#else
#    proxy_gateway="127.0.0.1"
#fi

if cat /etc/resolv.conf &> /dev/null; then
  proxy_gateway=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
else
  proxy_gateway="127.0.0.1"
fi
export all_proxy="http://$proxy_gateway:7890"
git config --global all.proxy $all_proxy

export PATH="/usr/sbin:$PATH";
export PATH="/usr/lib/ccache/:$PATH"
export PATH="/opt/riscv64-unknown-elf-gcc-8.3.0-2020.04.1-x86_64-linux-ubuntu14/bin:$PATH"
export PATH="/opt/qemu-9.0.0/build:$PATH"
export PATH="/opt/qemu-9.0.0/build/riscv64-sofmmu:$PATH"
export PATH="/opt/qemu-9.0.0/build/rscv64-linux-user:$PATH"

#alias vim="nvim"
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

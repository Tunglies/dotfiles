#!/bin/zsh

set_proxy() {
  if cat /etc/resolv.conf &> /dev/null; then
    proxy_gateway=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
  else
    proxy_gateway="127.0.0.1"
  fi
  export all_proxy="http://$proxy_gateway:7890"
  git config --global all.proxy $all_proxy
}
set_proxy

set_path() {
    local paths=($@)  # Store the passed paths in an array
    for _path in "${paths[@]}"; do
        if [[ -d "$_path" && ":$PATH:" != *":$_path:"* ]]; then
            export PATH="$_path:$PATH"
        fi
    done
}
custom_paths=(
  "/usr/sbin"
  "/usr/lib/ccache/"
  "/opt/riscv64-unknown-elf-gcc-8.3.0-2020.04.1-x86_64-linux-ubuntu14/bin"  
  "/opt/qemu-9.0.0/build"
  "/opt/qemu-9.0.0/build/riscv64-sofmmu"
  "/opt/qemu-9.0.0/build/rscv64-linux-user"
)
set_path "${custom_paths[@]}"

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

export all_proxy="http://172.25.112.1:7890"

export PATH="/usr/lib/ccache/:$PATH"

export PATH="$HOME/.os-env/qemu-8.2.0/build:$PATH"
export PATH="$HOME/.os-env/qemu-8.2.0/build/riscv64-softmmu:$PATH"
export PATH="$HOME/.os-env/qemu-8.2.0/build/riscv64-linux-user:$PATH"

alias vim="nvim"
alias cls="clear"

alias gp="git push"
alias gl="git pull"
alias ga="git commit -a -m"
alias gc="git checkout"

alias mr="make run"

. "$HOME/.cargo/env"

if [ -z "$TMUX" ]; then
    tmux attach || tmux new-session
fi

#cd ~

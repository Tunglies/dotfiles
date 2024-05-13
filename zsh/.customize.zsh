export all_proxy="http://127.0.0.1:7890"

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

#cd ~

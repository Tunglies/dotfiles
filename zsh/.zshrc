if uname -a | grep -iq "wsl"; then
  export ALL_PROXY="172.25.112.1:7890"
  eval "$(git config --global http.proxy ${ALL_PROXY})"
  eval "$(git config --global https.proxy ${ALL_PROXY})"
  source ~/.zshrc.tui
else
  export ALL_PROXY="192.168.50.250:7890"
  eval "$(git config --global http.proxy ${ALL_PROXY})"
  eval "$(git config --global https.proxy ${ALL_PROXY})"
  source ~/.zshrc.gui
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

tmux source $HOME/.tmux.conf

source ~/.zshrc.share

if [ -z "$TMUX" ]; then
      tmux attach || tmux new-session && cd ~
fi

if uname -a | grep -iq "wsl"; then
  export ALL_PROXY="172.25.112.1:7890"
  eval "$(git config --global http.proxy ${ALL_PROXY})"
  eval "$(git config --global https.proxy ${ALL_PROXY})"
  source ~/.zshrc.tui
else
  export ALL_PROXY="127.0.0.1:7890"
  eval "$(git config --global http.proxy ${ALL_PROXY})"
  eval "$(git config --global https.proxy ${ALL_PROXY})"
  source ~/.zshrc.gui
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

tmux source $HOME/.tmux.conf

source ~/.zshrc.share

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/opt/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/opt/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

if [ -z "$TMUX" ]; then
      tmux attach || tmux new-session && cd ~
fi

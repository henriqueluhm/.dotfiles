_FIG_LOCAL_BIN=~/.local/bin
[[ ":$PATH:" != *":$_FIG_LOCAL_BIN:"* ]] && PATH="${PATH:+"$PATH:"}$_FIG_LOCAL_BIN"
unset _FIG_LOCAL_BIN
[ -n $BASH_VERSION ] && eval "$(fig init bash pre --rcfile bashrc)"
# Created by luhm for 5.8.1\

eval "$(oh-my-posh init zsh --config '~/.poshthemes/amro.omp.json')"

# custom aliases
alias nv="nvim"
alias run="cd ~/Documents/Coding/cis/frontend && pnpm dev"
alias deploy="cd ~/Documents/Coding/cis && pnpm tf:deploy henrique ces"
alias cis="cd ~/Documents/Coding/cis"
alias back="cd ~/Documents/Coding/cis/backend"
alias front="cd ~/Documents/Coding/cis/frontend"
alias icons="cd ~/Documents/Coding/cis/frontend/src/assets/icons && nemo ."
alias keychron="echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode"

bindkey '^H' backward-kill-word

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

# nvim
if [ -d ~/bin/nvim-linux64/bin ]
then
  PATH=$PATH:~/bin/nvim-linux64/bin
fi
# nvim end  

# pnpm
export PNPM_HOME="/home/luhm/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH="$HOME/bin:$PATH"
# pnpm end

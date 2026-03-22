if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"


export HYPRSHOT_DIR="/home/sortbito/pictures/"

plugins=(
    aliases
    git
    archlinux
    autojump
    zsh-syntax-highlighting
    fast-syntax-highlighting
    zsh-autosuggestions
    python
    docker
    docker-compose
    command-not-found
    tmux
)

source $ZSH/oh-my-zsh.sh

[[ -s /home/sortbito/.autojump/etc/profile.d/autojump.sh ]] && source /home/sortbito/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# pnpm
export PNPM_HOME="/home/sortbito/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

. "$HOME/.local/bin/env"

# bun completions
[ -s "/home/sortbito/.bun/_bun" ] && source "/home/sortbito/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# uv
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# lazy
alias lzd="lazydocker"
alias lzg="lazygit"

# pacman
alias update="sudo pacman -Syu && flatpak update"

# tmux
alias t="tmux"

ts() {
    tmux new-session -s $1
}

ta() {
    if [ "$#" -eq 0 ]; then
        tmux attach
    else
        tmux attach -t $1
    fi
}

tk() {
    tmux kill-session -t $1
}

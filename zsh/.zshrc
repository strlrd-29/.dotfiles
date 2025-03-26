export ZSH="$HOME/.oh-my-zsh"

# custom scripts
export PATH="$PATH":"$HOME/.local/scripts/"

ZSH_THEME="pmcgee"

plugins=(
	git
	zsh-autosuggestions
	fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$HOME/.local/bin:$PATH

# bun completions
[ -s "/home/ouassim/.bun/_bun" ] && source "/home/ouassim/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# wallpapers
wal-fill() {
  wal -n -i "$@"
  feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
}

wal-random() {
  images=(/home/ouassim/wallpapers/*)
  wal -n -i ${images[$(( $RANDOM % ${#images[@]}))]}
  feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
}

bindkey -s ^f "tmux-sessionizer\n"

# uv completions
eval "$(uv generate-shell-completion zsh)"

# pnpm
export PNPM_HOME="/home/ouassim/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

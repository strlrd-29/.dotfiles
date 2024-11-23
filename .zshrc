export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="pmcgee"

plugins=(
	git
	zsh-autosuggestions
	fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$HOME/.local/bin:$PATH

# bun completions
[ -s "/home/ouassim/.bun/_bun" ] && source "/home/ouassim/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Initialize go path
export PATH=$PATH:$(go env GOPATH)/bin 
export GOPATH=$(go env GOPATH) 

# Initialize Theme
ZSH_THEME=""
autoload -U promptinit; promptinit
prompt pure

# Useful oh-my-zsh plugins
plugins=(git pyenv zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# Load pyenv (to manage your Python versions)
export PYENV_VIRTUALENV_DISABLE_PROMPT=1 # https://github.com/pyenv/pyenv-virtualenv/issues/135
type -a pyenv > /dev/null && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)" && RPROMPT+='[🐍 $(pyenv_prompt_info)]'

# Load poetry (package manage Python)
export PATH="$HOME/.poetry/bin:$PATH"

# Load aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Load funtions
[[ -f "$HOME/.functions" ]] && source "$HOME/.functions"

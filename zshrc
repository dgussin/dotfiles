echo 'Hello from .zshrc'


# Set Variables
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
# Change ZSH Options


# Create Aliases
alias ls='exa -laFh --git '
alias exa='exa -laFh --git '
alias man=batman
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm=trash


# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locaitons to $PATH variable
# Add Visual Studio Code (code)
export PATH="$N_PREFIX/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


# Write Handy Functions
function mkcd() { mkdir e-p "$@" && cd "$_"; }

#function mkcd() {
#  mkdir -p "$@" && cd "$_";
#}

# Use ZSH Plugins
# autocomplete for git
autoload -Uz compinit && compinit


# ...and Other Suprises



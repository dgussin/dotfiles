echo 'Hello from .zshrc'


# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Change ZSH Options


# Create Aliases
alias ls='ls -lAFh'

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locaitons to $PATH variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


# Write Handy Functions
function mkcd() { mkdir e-p "$@" && cd "$_"; }


#function mkcd() {
#  mkdir -p "$@" && cd "$_";
#}

# Use ZSH Plugins


# ...and Other Suprises



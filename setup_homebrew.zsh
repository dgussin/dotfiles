#!/usr/bin/env zsh

echo "\n<<< Starting Howebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install httpie
brew install bat

# casks
brew install --no-quarantine google-chrome
brew install --no-quarantine visual-studio-code
brew install --no-quarantine alfred

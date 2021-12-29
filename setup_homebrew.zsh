#!/usr/bin/env zsh

echo "\n<<< Starting Howebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add brew to path
eval "$(/opt/homebrew/bin/brew shellenv)"

# TODO: Keep an eye out for a different '--no-quarantine' solution.
# Currently, you can't do 'brew bundle --no-quarantine' as an option.
# It's currenly exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474

brew bundle --verbose
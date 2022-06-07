#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; int's in the Brewfile.

if grep -Fxq '/opt/homebrew/bin/zsh' '/etc/shells'; then
  echo '/opt/homebrew/bin/zsh already exists in /etc/shells'
else
  echo "Enter superuser (sudo) passwrod to edit /etc/shells"
  echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

if [ "$SHELL" = '/opt/homebrew/bin/zsh' ]; then
  echo '$SHELL is already /opt/homebrew/bin/zsh'
else
  echo "Enter user password to change login shell"
  chsh -s '/opt/homebrew/bin/zsh'
fi

if sh --version | grep -q zsh; then
  echo '/private/var/select/sh already linked to /bin/zsh'
else
  echo "Enter superuser (sudo) password to symlink sh to zsh"
  # Looked cute, might delete later, idk
  sudo ln -sfv /bin/zsh /private/var/select/sh

  # I'd likefor this to work instead.
  # sudo ln -sfv /user/local/bin/zsh /private/var/select/sh 
fi
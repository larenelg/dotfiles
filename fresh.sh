#!/bin/sh

echo "Setting up your Mac..."

# Check if Xcode Command Line Tools are installed
if ! xcode-select -p &>/dev/null; then
  echo "Xcode Command Line Tools not found. Installing..."
  xcode-select --install
else
  echo "Xcode Command Line Tools already installed."
fi

# Check for Oh My Zsh and install if we don't have it.
# --unattended stops the installer from running `exec zsh` at the end, which
# would replace this shell and abandon the rest of the script.
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)" "" --unattended
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -sw $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
# No `brew tap homebrew/bundle` — that tap is deprecated and empty; bundle is
# built into Homebrew now.
#
# --jobs 1 forces sequential installs. In parallel, formulae that share
# dependencies fight over the same download-cache and Cellar locks:
#   "A `brew install --formula node` process has already locked ..."
# which fails the install outright (poppler died this way on pkgconf).
brew bundle --file ./Brewfile --jobs 1

# Create a projects directory
mkdir -p $HOME/dev

# Clone Github repositories
./clone.sh

# Set macOS preferences - we will run this last because this will reload the shell
source ./.macos

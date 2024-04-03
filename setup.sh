#!/bin/sh

# Setup for a fresh install of macOS

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install XCode Command Line Tools
xcode-select --install

# Install homebrew and update paths
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add some plugins to zsh
brew install zsh-autosuggestions zsh-syntax-highlighting
exec zsh -l

# Setup a local http server

sudo apachectl -k stop
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist 2>/dev/null\

brew install openssl httpd php mysql dnsmasq




brew install --cask visual-studio-code

# Change the macOS dock show/hide speeds
defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -float 0.4;killall Dock






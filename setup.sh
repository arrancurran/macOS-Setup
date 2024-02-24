#!/bin/sh

# Setup for a fresh install of macOS

defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -float 0.4;killall Dock

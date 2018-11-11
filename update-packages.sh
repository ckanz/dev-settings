echo "Updating Homebrew packages..."
brew ls
echo ""

brew update
brew upgrade
brew prune
brew cleanup
brew doctor

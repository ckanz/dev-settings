echo "Updating Homebrew packages..."
brew ls
echo ""

brew update
brew upgrade
brew prune
brew cleanup
brew doctor

echo "Updating Pip packages..."
pip list
pip check
echo ""

pip install pip-review
pip-review --verbose --auto

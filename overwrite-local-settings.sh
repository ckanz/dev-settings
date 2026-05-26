echo "Overwriting local bash, vim and tmux settings."

read -p "Are you sure you want to continue? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  cp .vimrc ~/.vimrc
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  cp .tmux.conf ~/.tmux.conf
  cp .bash_profile ~/.bash_profile
  echo "Local settings overwritten."
else
  echo "Cancelled."
  exit 1
fi

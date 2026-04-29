echo "Updating bash, vim and tmux settings"
cp .vimrc ~/.vimrc
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf
cp .bash_profile ~/.bash_profile
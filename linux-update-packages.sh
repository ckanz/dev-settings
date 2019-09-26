echo "
██████╗  █████╗  ██████╗██╗  ██╗ █████╗  ██████╗ ███████╗    ██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗██████╗ 
██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔══██╗██╔════╝ ██╔════╝    ██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
██████╔╝███████║██║     █████╔╝ ███████║██║  ███╗█████╗      ██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  ██████╔╝
██╔═══╝ ██╔══██║██║     ██╔═██╗ ██╔══██║██║   ██║██╔══╝      ██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗
██║     ██║  ██║╚██████╗██║  ██╗██║  ██║╚██████╔╝███████╗    ╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗██║  ██║
╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝     ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
----------------------------------------------------------------------------------------------------------------------
"
date

echo "Updating packages..."
sudo apt --assume-yes  update
sudo apt --assume-yes upgrade

echo "Updating Git settings..."
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
curl https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt -o ~/gitalias.txt

echo "Updating npm & packages..."
sudo npm install -g npm@latest
sudo npm outdated -g
sudo npm update -g

git fetch
git pull

echo "Updating bash, vim and tmux settings"
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
cp .bash_profile ~/.bash_profile

echo "Done."
date

dotfile="$HOME/dotfiles"
bashrc="$HOME/.bashrc"

echo "Getting git..."
sudo apt install git -y

echo "Getting stow..."
sudo apt install stow -y

echo "Getting curl..."
sudo apt install curl -y

echo "Getting neovim..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

echo "Create alias in bashrc..."
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >>$bashrc

echo "Stowing neovim and tmux"
cd $dotfile
stow nvim
stow tmux
cd

echo "Getting Hack Font ..."
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip
unzip Hack.zip
rm Hack.zip
fc-cache -fv
cd

echo "Getting nodejs 22.x ..."
curl -fsSL https://deb.nodesource.com/setup_22.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt install -y nodejs
rm nodesource_setup.sh

echo "Getting tmux dependencies..."
sudo apt install -y autoconf
sudo apt install -y yacc
sudo apt install -y libevent-dev

echo "Getting and Building tmux"
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure
make && sudo make install
rm -rf tmux

echo ""
echo ""
echo ""
echo "======================================================="
echo "Finished setting up..."
echo "Go to your shell preferences and change font to 'Hack'"
echo "You can now work with tmux and neovim"
echo "======================================================="
echo ""
echo ""
echo ""

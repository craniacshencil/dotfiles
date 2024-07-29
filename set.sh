dotfile="$HOME/dotfiles"
bashrc="$HOME/.bashrc"
echo "getting git..."
sudo apt install git -y

echo "getting stow..."
sudo apt install stow -y

echo "getting curl..."
sudo apt install curl -y

echo "cloning dotfiles..."
git clone https://github.com/craniacshencil/dotfiles

echo "getting neovim..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

echo "create alias in bashrc..."
# echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> $bashrc

echo "stowing neovim"
cd $dotfile 
stow nvim
stow tmux 
cd 

echo "getting jetbrains..."
curl -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
cd ~/.local/share/fonts 
unzip JetBrainsMono.zip
rm JetBrainsMono.zip 
fc-cache -fv
cd

echo "getting nodejs..."
curl -fsSL https://deb.nodesource.com/setup_22.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt install -y nodejs

echo "getting tmux"
git clone https://github.com/tmux/tmux.git
cd tmux
sudo apt install -y autoconf
sudo apt install -y yacc
sudo apt install -y libevent-dev 
sh autogen.sh
./configure
make && sudo make install
rm -rf tmux

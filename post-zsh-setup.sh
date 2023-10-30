set -x

echo "Add zsh-autosuggestions plugin"
rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Add zsh-syntax-highlighting plugin"
rm -rf ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# echo "Add zsh-z plugin"
# git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z

# echo "Download themes for kitty"
# rm -rf ~/.config/kitty/kitty-themes
# git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

echo "Set Kitty theme"
mkdir -p ~/.config/kitty
rm -rf ~/.config/kitty/theme.conf
# cp ~/.config/kitty/kitty-themes/themes/VibrantInk.conf ~/.config/kitty/theme.conf
cp .config/kitty/theme.conf ~/.config/kitty/theme.conf

echo "Install JetBrainsMono nerd font"
# You can choose another at: https://www.nerdfonts.com/font-downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
mkdir -p ~/.fonts
rm ~/.fonts/JetBrainsMono*
rm ~/.fonts/OFL.txt
rm ~/.fonts/readme.md
rm ~/.fonts/LICENSE.txt
unzip JetBrainsMono.zip -d ~/.fonts
rm JetBrainsMono.zip*
fc-cache -fv

echo "Copy kitty.conf"
rm ~/.config/kitty/kitty.conf
cp .config/kitty/kitty.conf ~/.config/kitty/kitty.conf

echo "Copy .zshrc"
rm ~/.zshrc
cp .zshrc ~/.zshrc

echo "Get tmux plugin manager"
rm -rf ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Install libtmux python package"
python3 -m pip install --user libtmux

echo "Copy tmux.conf"
mkdir -p ~/.config/tmux
rm ~/.config/tmux/tmux.conf
cp .config/tmux/tmux.conf ~/.config/tmux/tmux.conf

echo "Installing lazyvim"
echo "Backup existing nvim files"
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

echo "Clone LazyVim starter template"
git clone https://github.com/LazyVim/starter ~/.config/nvim

echo "Remove LazyVim git folder"
mkdir -p ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo "Copy LazyVim configs"
cp -r .config/nvim ~/.config

#echo "Source ~/.zshrc"
#source ~/.zshrc

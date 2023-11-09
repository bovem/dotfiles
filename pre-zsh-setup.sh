set -x

echo "Updating all packages"
sudo dnf update

echo "Installing packages"
sudo dnf install kitty git vim neovim ripgrep fd-find tmux zsh util-linux-user python3-pip fzf gcc
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit

echo "View existing shell for user"
grep ${USER} /etc/passwd

echo "Change shell to ZSH"
chsh -s $(which zsh)

echo "Verify changed shell"
grep ${USER} /etc/passwd

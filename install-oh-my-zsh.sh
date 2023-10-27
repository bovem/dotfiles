echo "Delete existing Oh-My-Zsh installation"
rm -rf ~/.oh-my-zsh

echo "Clone and install Oh-My-Zsh";
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
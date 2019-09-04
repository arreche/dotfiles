# dotfiles

## Setup

```
# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Packages
brew cask install blockblock
brew bundle
brew cleanup

# Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        vim +PlugInstall +qall

# Block Ads
curl -O https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
sudo cp hosts /etc/hosts

# uBlock Origin
```

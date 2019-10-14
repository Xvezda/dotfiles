#!/usr/bin/env bash
set -x
set -e

if [ "${TRAVIS_OS_NAME}" == linux ]; then
    sudo apt-get -qq update
    sudo apt-get install -yq build-essential

    sudo add-apt-repository -y ppa:aacebedo/fasd
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get -qq update

    sudo apt-get install -yq zsh tmux vim fasd nodejs
    sudo apt-get install -yq xclip
elif [ "${TRAVIS_OS_NAME}" == osx ]; then
    brew update
    brew install zsh tmux neovim fasd
    brew upgrade node
    brew install reattach-to-user-namespace
fi

# Install oh-my-zsh
yes | sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Install tpm
mkdir -p $HOME/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
# Install pure
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

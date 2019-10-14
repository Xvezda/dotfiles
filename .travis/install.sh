#!/usr/bin/env bash
set -x
set -e

if [ "${TRAVIS_OS_NAME}" == linux ]; then
    sudo apt-get install -yq git curl zsh tmux vim fasd nodejs npm xclip
elif [ "${TRAVIS_OS_NAME}" == osx ]; then
    brew install git curl zsh tmux neovim fasd node reattach-to-user-namespace
fi

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Install tpm
mkdir -p $HOME/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
# Install pure
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

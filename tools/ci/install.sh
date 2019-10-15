#!/usr/bin/env bash
set -x
set -e

if [ "${ACTIONS_OS_NAME}" == linux || "${ACTIONS_OS_NAME}" == windows ]; then
    sudo apt-get -qq update
    sudo apt-get install -yq build-essential

    sudo add-apt-repository -y ppa:aacebedo/fasd
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    sudo apt-get -qq update

    sudo apt-get install -yq zsh tmux vim fasd nodejs
    sudo apt-get install -yq xclip

    yes | sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    sudo chown $USER:$USER $HOME/.zshrc
elif [ "${ACTIONS_OS_NAME}" == macos ]; then
    brew update
    brew install zsh tmux neovim fasd
    brew upgrade node
    brew install reattach-to-user-namespace

    yes | sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

mkdir -p "$HOME/.tmux/plugins/tpm"
git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"

mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"


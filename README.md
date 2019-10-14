[![Build Status](https://travis-ci.com/Xvezda/xvezda.github.io.svg?branch=master)](https://travis-ci.com/Xvezda/xvezda.github.io)
# dotfiles
My dev environment configuration files

## Platforms
- Linux (Confirmed on Ubuntu 16.04)
- Mac OS X (Confirmed on MacOS Mojave 10.14.5)
- Windows (Confirmed on Insider Preview Build 18995)
    - WSL 2
    - Msys2 (May have some compatibility issue)

## Dependencies
- [tmux](https://github.com/tmux/tmux) >= 1.9 && [Vim](https://www.vim.org/) >= 7.4
- zsh && [oh_my_zsh](https://ohmyz.sh/)
- [tpm](https://github.com/tmux-plugins/tpm#tmux-plugin-manager)
- [fasd](https://github.com/clvv/fasd#install)
- [pure](https://github.com/sindresorhus/pure#manually)

* Mac
    * reattach-to-user-namespace
    * Brew bundle (optional)
* Linux
    * `sudo apt-get install xclip`

## Installation
```
git clone https://github.com/Xvezda/dotfiles.git
cd dotfiles
chmod +x install

./install # Check out usage instruction please
```

## Shortcuts
Commands | Actions
--- | ---
<kbd>shift</kbd>+<kbd>u</kbd> | Re-do undo.
<kbd>ctrl</kbd>+<kbd>a</kbd> | Tmux prefix.
<kbd>alt</kbd>+<kbd>h,j,k,l</kbd> | Move around Tmux panes.
<kbd>Prefix</kbd><kbd>ctrl</kbd>+<kbd>h,j,k,l</kbd> | Swap Tmux panes.
<kbd>ctrl</kbd>+<kbd>w</kbd><kbd>%</kbd> | Vim split vertically.
<kbd>ctrl</kbd>+<kbd>w</kbd><kbd>"</kbd> | Vim split horizontally.
<kbd>Leader</kbd><kbd>y,x,p</kbd> | Vim system clipboard copy, cut, paste.
<kbd>,</kbd><kbd>l</kbd><kbd>n</kbd> | Toggle relative line number.
<kbd>,</kbd><kbd>r</kbd><kbd>w</kbd> | Remove trailing whitespaces.
<kbd>,</kbd><kbd>r</kbd><kbd>r</kbd> | Remove carrage return characters.
<kbd>,</kbd><kbd>r</kbd><kbd>s</kbd> | Run current vim script.
<kbd>,</kbd><kbd>r</kbd><kbd>l</kbd><kbd>a</kbd> | Reload all Vim configuration.
<kbd>,</kbd><kbd>r</kbd><kbd>l</kbd><kbd>l</kbd> | Reload local Vim configuration.
<kbd>a,i</kbd><kbd>k,K</kbd> | For textobj-comment all or in.
<kbd>a,i</kbd><kbd>j</kbd> | For textobj-line all or in.
<kbd>a,i</kbd><kbd>h</kbd> | For textobj-lastpat all or in.
<kbd>a,i</kbd><kbd>d</kbd> | Text object for docstring (Python specific).
<kbd>[,]</kbd>+<kbd>Space</kbd> | Insert empty line.
<kbd>,</kbd><kbd>u</kbd><kbd>1~6</kbd> | Markdown header.
<kbd>Shift</kbd>+<kbd>&uparrow;</kbd><kbd>&downarrow;</kbd><kbd>&leftarrow;</kbd><kbd>&rightarrow;</kbd> | Drag text to move around (visual mode only).
<kbd>F10</kbd> | Toggle paste mode.
<kbd>F12</kbd> | Toggle nested Tmux mode.

## Etc
* You can update/restore this project's configuration files by
`./install --fetch`
* Credits to [@samoshkin](https://github.com/samoshkin/tmux-config/), [@christoomey](https://github.com/christoomey/dotfiles). Thank you for sharing cool settings.
* Check out [Vim Bootstrap Commands](https://github.com/avelino/vim-bootstrap#commands), [Pythonsense](https://github.com/jeetsukumaran/vim-pythonsense), [Targets.vim](https://github.com/wellle/targets.vim) and [unimpaired.vim](https://github.com/tpope/vim-unimpaired) for more command informations.

# dotfiles
![GitHub](https://img.shields.io/github/license/Xvezda/dotfiles)
[![Actions Status](https://github.com/Xvezda/dotfiles/workflows/Test%20CI/badge.svg)](https://github.com/Xvezda/dotfiles/actions)
![Platform](https://img.shields.io/badge/platform-macos%20%7C%20linux%20%7C%20windows-lightgrey)


My development environment configuration files with utility scripts.

## Platforms
- Linux (Confirmed on Ubuntu 16.04)
- Mac OS X, macOS 10 (Confirmed on MacOS Mojave 10.14.5)
- Windows (Confirmed on Insider Preview Build 18995)
    - WSL 2
    - Msys2 (May have some compatibility issue)

## Dependencies
- [tmux](https://github.com/tmux/tmux) >= 1.9 && [Vim](https://www.vim.org/) >= 7.4
- bash or zsh and [oh_my_zsh](https://ohmyz.sh/)
- [tpm](https://github.com/tmux-plugins/tpm#tmux-plugin-manager)
- [fasd](https://github.com/clvv/fasd#install)
+ Mac
    - reattach-to-user-namespace
    - Brew bundle (optional)
+ Linux
    - `sudo apt-get install xclip`

Recommended.
Partially support when above requirements not satisfied.


## Installation
```
git clone https://github.com/Xvezda/dotfiles.git
cd dotfiles
chmod +x install

./install # Check out usage instruction please
```

If there is problem while installing, check CI build settings to resolve issue. Or, just [register new issue](https://github.com/Xvezda/dotfiles/issues/new).
Feel free to ask :)


## TMUX Shortcuts
| Commands                                            | Actions            |
| ---                                                 | ---                |
| <kbd>ctrl</kbd>+<kbd>a</kbd>                        | Prefix.            |
| <kbd>alt</kbd>+<kbd>h,j,k,l</kbd>                   | Move around panes. |
| <kbd>Prefix</kbd><kbd>ctrl</kbd>+<kbd>h,j,k,l</kbd> | Swap panes.        |

## VIM Shortcuts
| Commands                                                                                                 | Actions                                      |
| ---                                                                                                      | ---                                          |
| <kbd>shift</kbd>+<kbd>u</kbd>                                                                            | Re-do undo.                                  |
| <kbd>ctrl</kbd>+<kbd>w</kbd><kbd>%</kbd>                                                                 | Split buffer vertically.                        |
| <kbd>ctrl</kbd>+<kbd>w</kbd><kbd>"</kbd>                                                                 | Split buffer horizontally.                      |
| <kbd>Leader</kbd><kbd>y,x,p</kbd>                                                                        | system clipboard copy, cut, paste.       |
| <kbd>,</kbd><kbd>l</kbd><kbd>n</kbd>                                                                     | Toggle relative line number.                 |
| <kbd>,</kbd><kbd>r</kbd><kbd>w</kbd>                                                                     | Remove trailing whitespaces.                 |
| <kbd>,</kbd><kbd>r</kbd><kbd>r</kbd>                                                                     | Remove carrage return characters.            |
| <kbd>,</kbd><kbd>r</kbd><kbd>s</kbd>                                                                     | Run current vim script.                      |
| <kbd>,</kbd><kbd>r</kbd><kbd>l</kbd><kbd>a</kbd>                                                         | Reload all Vim configuration.                |
| <kbd>,</kbd><kbd>r</kbd><kbd>l</kbd><kbd>l</kbd>                                                         | Reload local Vim configuration.              |
| <kbd>[,]</kbd>+<kbd>Space</kbd>                                                                          | Insert empty line.                           |
| <kbd>,</kbd><kbd>u</kbd><kbd>1~6</kbd>                                                                   | Markdown header.                             |
| <kbd>F10</kbd>                                                                                           | Toggle paste mode.                           |
| <kbd>F12</kbd>                                                                                           | Toggle nested Tmux mode.                     |
| <kbd>Leader</kbd>+<kbd>/</kbd>                                                                           | Search keyword under cursor.                 |

## Etc
* You can update/restore this project's configuration files by
`./install --fetch`
* Credits to [@samoshkin](https://github.com/samoshkin/tmux-config/), [@christoomey](https://github.com/christoomey/dotfiles). Thank you for sharing cool settings.
* Check out [Vim Bootstrap Commands](https://github.com/avelino/vim-bootstrap#commands), [Pythonsense](https://github.com/jeetsukumaran/vim-pythonsense), [Targets.vim](https://github.com/wellle/targets.vim) and [unimpaired.vim](https://github.com/tpope/vim-unimpaired) for more command informations.

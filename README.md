# dotfiles
My dev environment configuration files

## Dependencies
[Tmux](https://github.com/tmux/tmux) >= 1.9 && [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm),  
[Vim](https://www.vim.org/) >= 7.4 && [Vim Bootstrap](https://www.vim-bootstrap.com/) Required.

## Installation
```
git clone https://github.com/Xvezda/dotfiles.git
cd dotfiles
chmod +x install
./install --setup "all"
```

## Shortcuts
Commands | Actions
--- | ---
<kbd>ctrl</kbd>+<kbd>a</kbd> | Tmux prefix
<kbd>alt</kbd>+<kbd>h,j,k,l</kbd> | Move around Tmux panes.
<kbd>,</kbd><kbd>l</kbd><kbd>n</kbd> | Toggle relative line number.
<kbd>,</kbd><kbd>r</kbd><kbd>l</kbd> | Reload Vim configuration.
<kbd>a,i</kbd><kbd>j,J</kbd> | For textobj-comment all or in.
<kbd>[,]</kbd>+<kbd>Space</kbd> | Insert empty line.
<kbd>,</kbd><kbd>ctrl</kbd>+<kbd>t</kbd> | Create default template for specific language.
<kbd>&uparrow;</kbd><kbd>&downarrow;</kbd><kbd>&leftarrow;</kbd><kbd>&rightarrow;</kbd> | ![NOP](https://i.imgur.com/CoWZ05t.gif)

## Etc
* You can update/restore this project's configuration files by
`./install --fetch`
* Check out [Vim Bootstrap Commands](https://github.com/avelino/vim-bootstrap#commands) for more command informations.

# dotfiles
My dev environment configuration files

## Dependencies
[Tmux](https://github.com/tmux/tmux) >= 1.9 && [Vim](https://www.vim.org/) >= 7.4
* Mac specific.
    * Brew bundle, reattach-to-user-namespace.

## Installation
```
git clone https://github.com/Xvezda/dotfiles.git
cd dotfiles
chmod +x install
./install --setup "all" # or "vim", "nvim", "tmux" separately.
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

rclip
=====

Scripts for copy selected text via ssh.
You can use other clipboard command by replacing `pbcopy` (Mac specific) in codes.

usage
-----
1. Install `remote.vim` file to remote server.
2. Copy and paste from `tmux.remote.conf` file if you use TMUX on remote server.
3. Move `remote.sh` file to `$HOME/.ssh/remote.sh` and make sure executable
```sh
chmod +x remote.sh
```
4. Copy and paste from `.zprofile` to your favorite shell's configuration file. Then source your configuration file.
```
e.g.
bash - .bashrc or .bash_profile
zsh  - .zshrc or .zprofile
```
5. Now connect to remote server with `ssh-clip` command. Press <kbd>,</kbd><kbd>y</kbd> to remote copy for VIM, and <kbd>y</kbd> for TMUX(Copy mode).


That's it.

install:
	stow --verbose --target=$$HOME --restow */
	git config --global core.excludesfile ~/.git-global-ignore
uninstall:
	stow --verbose --target=$$HOME --delete */

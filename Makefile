install:
	stow --verbose --target=$$HOME --restow */
uninstall:
	stow --verbose --target=$$HOME --delete */

init: submodules install
install_dir = $(HOME)
update: update_submodules install
install:
	mkdir -p $(install_dir)
	cp -r .vim .vimrc .tmux-themepack .tmux.conf $(install_dir)
submodules:
	git submodule init && git submodule update
update_submodules:
	git submodule update --remote --merge

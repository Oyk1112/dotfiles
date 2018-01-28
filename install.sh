#!/bin/bash
function install_prepare_software() {

	sudo apt-get install git gcc g++

}

function install_tmux() {

	sudo apt-get install tmux
	sudo apt-get install powerline
	rm -rf ~/.tmux.conf
	rm -rf ~/.tmux.conf.local
	cp .tmux.conf ~
	cp .tmux.conf.local ~

}

function install_zsh() {

	sudo apt-get install zsh
	sudo chsh -s /bin/zsh
	rm -rf ~/.zshrc
	cp .zshrc ~
	git clone https://github.com/robbyrussell/oh-my-zsh ~
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

}

function install_neovim() {

	sudo apt-get install neovim vim-gtk3 vim-youcompleteme exbuerant-ctag python3-pip
	sudo pip3 install --upgrade neovim

	rm -rf ~/.vimrc
	rm -rf ~/Bundle.vim
	rm -rf ~/BundleConfig.vim
	rm -rf ~/.ycm_extra_conf.py
	rm -rf ~/.vim
	mkdir ~/.vim
	cp .vimrc ~
	cp Bundle.vim ~
 	cp BundleConfig.vim ~
	cp .ycm_extra_conf.py ~
	ln -s ~/.vim ~/.config/nvim
	ln -s ~/.vimrc ~/.config/nvim/init.vim

	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    nvim -c "PluginInstall" -c "qa"

    git clone https://github.com/ryanoasis/nerd-fonts ~
	cd ~/nerd-fonts
	./install.sh

}

function main() {

	install_prepare_software
	install_tmux
	install_zsh
	install_neovim

}

main

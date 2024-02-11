#!/usr/bin/env bash

# Install additional dependencies for my dotfiles
# Usage: ./install_deps.sh

sudo pacman -S neovim alacritty fish tmux stow \
	ripgrep github-cli fd python-pip python-pipx \
	lazygit python-pynvim thunderbird exa fzf flatpak \
	libssh unixodbc libxslt ncurses chromium micro \
	gnome-keyring scrcpy discord bitwarden libsecret \
	firefox curl nerd-fonts

sudo pacman -S --needed base-devel perl-authen-sasl perl-io-socket-ssl

yay -S appimagelauncher

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

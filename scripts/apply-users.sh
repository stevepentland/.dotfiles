#!/usr/bin/env bash

pushd $HOME/.dotfiles
home-manager switch -f ./users/steve/home.nix
popd

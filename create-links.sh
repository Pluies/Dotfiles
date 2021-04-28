#!/usr/bin/env bash

# Run this from the Dotfiles directory
DOTFILES_DIR=$(pwd)

cd ~ || exit

ln -si "${DOTFILES_DIR}/bash/.bash" .
ln -si "${DOTFILES_DIR}/bash/.bash_profile" .
ln -si "${DOTFILES_DIR}/.inputrc" .
ln -si "${DOTFILES_DIR}/vim/.vimrc" .

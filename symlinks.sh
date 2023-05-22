#!/usr/bin/env sh

# Create symlinks

## Zsh
test -e "${HOME}/.zshrc" || ln -sfn "${HOME}/.files/zsh/zshrc" "${HOME}/.zshrc"
test -e "${HOME}/.zsh" || ln -sfn "${HOME}/.files/zsh/" "${HOME}/.zsh"

## Vim
test -e "${HOME}/.vimrc" || ln -sfn "${HOME}/.files/vim/vimrc" "${HOME}/.vimrc"
test -e "${HOME}/.vim" || ln -sfn "${HOME}/.files/vim/" "${HOME}/.vim"

## Git
test -e "${HOME}/.gitconfig" || ln -sfn "${HOME}/.files/git/gitconfig" "${HOME}/.gitconfig"
test -e "${HOME}/.gitignore" || ln -sfn "${HOME}/.files/git/gitignore" "${HOME}/.gitignore"
test -e "${HOME}/.gitattributes" || ln -sfn "${HOME}/.files/git/gitattributes" "${HOME}/.gitattributes"
test -e "${HOME}/.gitmessage" || ln -sfn "${HOME}/.files/git/gitmessage" "${HOME}/.gitmessage"

## Tmux
test -e "${HOME}/.tmux.conf" || ln -sfn "${HOME}/.files/tmux/tmux.conf" "${HOME}/.tmux.conf"
test -e "${HOME}/.tmux" || ln -sfn "${HOME}/.files/tmux/" "${HOME}/.tmux"


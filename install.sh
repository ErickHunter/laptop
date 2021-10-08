#!/usr/bin/env bash

# -e Abort errors. -u Supress unbound varibale errors.
# Set defult file permission.
set -eu
umask 022

DOTFILES_REPOSITORY=""
DOTFILES_FOLDER="$HOME/.files"

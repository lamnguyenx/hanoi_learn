#!/bin/bash

# Copyright 2022-2024 (author: lamnt45)

# DIRECTION='
# Add the following lines to your .bashrc:

#     # %--start--
#     # per-project environment
#     if [[ -f .project.sh ]]; then
#         source .project.sh
#     fi
#     # %--end--

# '

if [ -n "$BASH_VERSION" ]; then
    BASH_SOURCE="${BASH_SOURCE[0]}"
elif [ -n "$ZSH_VERSION" ]; then
    BASH_SOURCE="${(%):-%x}"
else
    echo "Unsupported shell. Please use Bash or Zsh."
    exit 1
fi

SWD="$(dirname "$(realpath "$BASH_SOURCE")")"
export PATH=$SWD/bin:$PATH
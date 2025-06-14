#! /usr/bin/env bash
set -euo pipefail

if [ -f "${HOME}/.tmux.conf" ]; then
        rm -f "${HOME}/.tmux.conf" 
fi

if [ ! -d "${HOME}/.config/tmux" ]; then
        git clone https://github.com/ethanholter/tmux "${HOME}/.config/tmux"
    else
            (cd ${HOME}/.config/tmux && git pull)
fi

if [ ! -f "${HOME}/.tmux.conf" ]; then
        ln -s "${HOME}/.config/tmux/.tmux.conf" "${HOME}/.tmux.conf"
fi

echo "success"


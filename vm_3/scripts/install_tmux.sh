#!/bin/bash

pacman -Sy tmux git --noconfirm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cat << EOF >> ~/.tmux/config
# Tmux plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-cpu'
set -g @plugin 'pwittchen/tmux-plugin-ram'
set -g @plugin 'egel/tmux-gruvbox'
set -g @plugin 'tmux-plugins/tmux-sensible'

run '~/.tmux/plugins/tpm/tpm'
EOF


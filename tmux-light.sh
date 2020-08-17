#! /bin/sh
if tmux info &> /dev/null; then 
  tmux source-file ~/.tmux-themes/light.conf
fi
echo "\033]50;SetProfile=DefaultLight\a"

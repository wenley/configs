#! /bin/sh
if tmux info &> /dev/null; then 
  tmux source-file ~/.tmux-themes/dark.conf
fi
echo "\033]50;SetProfile=Default\a"

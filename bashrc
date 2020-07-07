
source ~/.git-prompt.sh

# From working at Square, Summer 2013
alias l="ls -la"
alias c="clear"
alias v="vim"

alias gap="git add -p"
alias gb="git branch"
alias gco="git checkout"
alias gcv="git commit --verbose"
alias gcp="git checkout -p"
alias gcam="git commit --amend"
alias gs="git status"
alias gl="git log"
alias glp="git log -p"

alias pe="python -m pundle"
alias python=python3

function PWD {
  python ~/.python_pwd
}

PS1='\u@\h $(PWD)\[\033[0;32m\]$(__git_ps1 " %s")\[\033[00m\] \$ '

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
VISUAL=/usr/bin/vim
EDITOR=/usr/bin/vim

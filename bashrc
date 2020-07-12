
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
alias grc="git rebase --continue"
alias grim="git rebase -i master"
alias grid="git rebase -i development"
alias gs="git status"

# Ruby things
alias be="bundle exec"
alias bees="bundle exec rspec"
alias beer="bundle exec rake"

alias pe="python -m pundle"
alias python=python3

function PWD {
  python ~/.python_pwd
}

PS1='\u@\h $(PWD)\[\033[0;32m\]$(__git_ps1 " %s")\[\033[00m\] \$ '

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
VISUAL=/usr/bin/vim
EDITOR=/usr/bin/vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

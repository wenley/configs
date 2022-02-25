
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
alias grim="git rebase -i main"
alias grid="git rebase -i development"
alias gs="git status"
alias d="git diff development...HEAD --name-status"
alias dm="git diff master...HEAD --name-status"

# Ruby things
alias be="bundle exec"
alias bees="bundle exec rspec"
alias beer="bundle exec rake"
alias r="d | awk '\$2 ~ /.rb$/ || \$2 ~ /.rake$/ { print \$2 }' | xargs bundle exec rubocop -a"
alias s="d | awk '\$2 ~ /_spec.rb$/ { print \$2 }' | xargs bin/rspec"
alias rdm="dm | awk '\$2 ~ /.rb$/ || \$2 ~ /.rake$/ { print \$2 }' | xargs bundle exec rubocop -a"
alias sdm="dm | awk '\$2 ~ /_spec.rb$/ { print \$2 }' | xargs bin/rspec"

# From Gusto
alias y="d | awk '\$2 ~ /^frontend.*_spec.js/ { print \$2 }' | xargs yarn test"
alias ready="bundle && yarn && bin/spring stop && bin/rails db:setup && bin/spring start && say ready"
alias p="d | awk '{ print \$2 }' | cut -d'/' -f1-2 | sort | uniq"

alias pe="python -m pundle"
alias python=python3

alias dark_mode="~/.tmux-themes/dark.sh"
alias light_mode="~/.tmux-themes/light.sh"

function PWD {
  python ~/.python_pwd
}

PS1='\u@\h $(PWD)\[\033[0;32m\]$(__git_ps1 " %s")\[\033[00m\] \$ '

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
VISUAL=/usr/bin/vim
EDITOR=/usr/bin/vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

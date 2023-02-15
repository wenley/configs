
source ~/.git-prompt.sh

# From working at Square, Summer 2013
alias l="ls -la"
alias c="clear"
alias v="vim"
alias d="git diff main...HEAD --name-status"

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

# Ruby things
alias be="bundle exec"
alias bees="bundle exec rspec"
alias beer="bundle exec rake"

alias pe="python -m pundle"
alias python=python3

alias dark_mode="~/.tmux-themes/dark.sh"
alias light_mode="~/.tmux-themes/light.sh"

autoload -U colors && colors
setopt PROMPT_SUBST
PS1='$USER@%m %2d %{$fg[green]%}$(__git_ps1 "%s")%{$reset_color%} \$ '

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
VISUAL=/usr/bin/vim
EDITOR=/usr/bin/vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ $(ps ax | grep "[s]sh-agent" | wc -l) -eq 0 ] ; then
    eval $(ssh-agent -s) > /dev/null
    if [ "$(ssh-add -l)" = "The agent has no identities." ] ; then
        # Auto-add ssh keys to your ssh agent
        # Example:
        # ssh-add ~/.ssh/id_rsa > /dev/null 2>&1
    fi
fi

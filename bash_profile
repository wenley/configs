
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export CLICOLOR=1

export TERM=xterm-256color

# OPAM configuration
. /Users/wenley/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export PATH="$HOME/.cargo/bin:$PATH"

source ~/.git-completion.bash

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Env
HISTSIZE=10
HISTFILESIZE=0
export PATH="/home/skyfox/Documents/repos/skybin:$PATH"

# Aliases
alias cls=clear
alias dl='wget --no-parent -r -l 2 -p -k'
alias home='cd ~'
alias ll='ls -la'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sshgit='ssh-add ~/.ssh/github'

# Commands
## Thefuck
if [[ "$OSTYPE" != "msys" ]]; then
    eval $(thefuck --alias)
fi
## SSH
{ eval `ssh-agent -s`; } &>/dev/null

# Prompt
PS1='[\u@\h \W]\$ '
## oh-my-posh override
eval "$(oh-my-posh init bash --config '~/.sky.omp.json')"

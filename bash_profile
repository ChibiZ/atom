# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -r /etc/bashrc ]; then
  . /etc/bashrc
fi

## PATH
# local
export PATH=~/.bin:/usr/local/bin:"${PATH}:"
# heroku
export PATH="/usr/local/heroku/bin:$PATH"

# twig-lint
# export PATH=~/.bin:/usr/local/bin:"~/.composer/vendor/bin/twig-lint"
# /Users/kozlov/.composer/vendor/asm89/twig-lint/bin/twig-lint
export PATH="/Users/kozlov/.composer/vendor/asm89/twig-lint/bin/:$PATH"

# Autocomplete
complete -cf sudo
complete -cf man

# Append history
shopt -s histappend
PROMPT_COMMAND='history -a; history -n'

# History ignore
export HISTCONTROL="ignoredups"
export HISTIGNORE="&:ls:l:ll:la:exit:su"

# Prevent overwriting files
set -o noclobber

# Color grep
export GREP_OPTIONS="--color=auto"

# Git prompt
#source ~/.git-prompt.sh

# Aliases
alias ls='ls -FG'
alias ..='cd ..'
alias cd..='cd ..'
alias df='df -h'
alias du='du -h'
alias mc='mc -c'
alias l='ls -lhG'
alias la='ls -AFG'
alias li='ls -lhiG'
alias ll='ls -lAG'
alias clr='clear'
alias rm='rm -f'
alias urar='unrar x'
alias uzip='unzip -x'

alias enhance='function ne() { docker run --rm -v "$(pwd)/`dirname ${@:$#}`":/ne/input -it alexjc/neural-enhance ${@:1:-1} "input/`basename ${@:$#}`"; }; ne'
# Prompt
#PS1='\[\e[1;32m\]\
#[\u@\h \
#\[\e[m\]\
#\w\
#\[\e[1;32m\]\
#$(__git_ps1 " (%s)")\
#]\n \[\e[1;32m\]\$ \
#\[\e[m\]'

# Terminal colors
export LSCOLORS=gxFxCxDxBxegedabagacad

# Default editor
export EDITOR="nano"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export NVM_DIR="/Users/aakozlov/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

PHP_AUTOCONF="/usr/local/bin/autoconf"


# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# Customize to your needs...


autoload -Uz promptinit
promptinit
prompt adam1
#VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3' # This needs to be placed before the virtualenvwrapper command
PROJECT_HOME='/media/data/PROJECTS'
source /usr/local/bin/virtualenvwrapper.sh

alias t-start='sudo service transmission-daemon stop'
alias t-stop='sudo service transmission-daemon start'
alias t-reload='sudo service transmission-daemon reload'
alias t-list='transmission-remote -n 'transmission:transmission' -l'
alias t-basicstats='transmission-remote -n 'transmission:transmission' -st'
alias t-fullstats='transmission-remote -n 'transmission:transmission' -si'
alias anacondainit='export PATH="/home/sx01/anaconda3/bin:$PATH"'
alias lein=/home/sx01/bin/lein

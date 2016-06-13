# color
export CLICOLOR=1

# shortcuts
alias ll='ls -l'
alias la='ls -a'
alias vi='mvim -v'

# bash-completion
# Add the following lines to your ~/.bash_profile:
#  if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#  fi

# git auto complete
if [ -f ~/config/git/.git-completion.bash ]; then
	source ~/config/git/.git-completion.bash
fi

# gradle config
GRADLE_HOME=~/.opt/gradle-2.0
export GRADLE_HOME
export PATH=$PATH:$GRADLE_HOME/bin

# mysql config
export PATH=$PATH:/usr/local/mysql/bin

export PATH=$PATH:~/.opt/apache-tomcat-7.0.54/bin
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# nvm config
USER_NAME=songyang
NVM_DIR=/Users/$USER_NAME/.nvm
[[ -s $NVM_DIR/nvm.sh ]] && source $NVM_DIR/nvm.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

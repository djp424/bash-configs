# Setup
#========

# Paths
export PATH="$PATH:~/.composer/vendor/bin"
export PATH="$PATH:~/wpcs/vendor/bin"
export MAMP_PHP=/Applications/MAMP/bin/php/php5.6.10/bin
export PATH="$MAMP_PHP:$PATH"

# Settings
export EDITOR=vim

# Aliases
#========

# Spelling Mistakes
alias cd..='cd ..'
alias sl=ls
alias mdkir=mkdir

# Common Commands
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Short Versions
alias v=vagrant
alias g=git
alias d=docker

# Vagrant
alias up='vagrant up'
alias halt='vagrant halt'
alias down=halt

# Git Shortcuts
alias gs='git status'
alias ga='git add .'
alias gp='git push origin HEAD'
alias gn='git checkout -b'
alias gnew=gn
alias gd='git difftool'
alias gdiff=gd

alias gshow='git show --pretty=oneline'
alias gl='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'

alias greset='git reset --hard origin/master'
alias gpushom='git push origin master'
alias gpullom='git pull origin master'

# Stored Regular Expressions
alias reg_mac='echo [0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}'
alias grep_mac='grep -E `reg_mac`'
alias reg_email='echo "[^[:space:]]+@[^[:space:]]+"'
alias reg_ip='echo "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"'

# Reference
alias alphabet='echo a b c d e f g h i j k l m n o p q r s t u v w x y z'
alias unicode='echo ✓ ™  ♪ ♫ ☃ ° Ɵ ∫'
alias numalphabet='alphabet; echo 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6'

# 3rd Party
alias weather='curl -4 http://wttr.in/New_York'

# Functions
#==========

# Git commit without quotes
function gc() {
  message=$*
  if [ -z "$message" ]; then
    echo "Add a message"
    return 1
  fi
  git commit -am "$message"
}

# Get to the top of a git tree
function cdp() {
  TEMP_PWD=`pwd`
  while ! [ -d .git ]; do
    cd ..
  done
  OLDPWD=$TEMP_PWD
}

# Check out a pull request from github
function pr() {
  id=$1
  if [ -z $id ]; then
    echo "Need Pull request number as argument"
    return 1
  fi
  git fetch origin pull/${id}/head:pr_${id}
  git checkout pr_${id}
}

# Custom
#==========

if [ -f "$HOME/.bash_custom" ]; then
	source "$HOME/.bash_custom"
fi

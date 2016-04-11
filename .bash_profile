# Paths
#========

export PATH="$PATH:~/.composer/vendor/bin"
export PATH="$PATH:~/wpcs/vendor/bin"
export MAMP_PHP=/Applications/MAMP/bin/php/php5.6.10/bin
export PATH="$MAMP_PHP:$PATH"

# Aliases
#========

# Typing Errors
alias sl=ls
alias mdkir=mkdir

# Short things are better
alias v=vagrant
alias g=git
alias d=docker

# Git Shortcuts
alias gs='git show --pretty=oneline'
alias gpom='git push origin master'
alias gpod='git push origin development'
alias grom='git reset --hard origin/master'
alias gp='git pull'
alias gpom='git pull origin master'

# Stored Regular Expressions
alias reg_mac='echo [0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}'
alias grep_mac='grep -E `reg_mac`'
alias reg_email='echo "[^[:space:]]+@[^[:space:]]+"'
alias reg_ip='echo "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"'

# Reference
alias alphabet='echo a b c d e f g h i j k l m n o p q r s t u v w x y z'
alias unicode='echo ✓ ™  ♪ ♫ ☃ ° Ɵ ∫'
alias numalphabet='alphabet; echo 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6'
alias ascii='man ascii | grep -m 1 -A 63 --color=never Oct'

# 3rd Party
alias weather='curl -4 http://wttr.in/New_York'

# Functions
#==========

# Get to the top of a git tree
cdp () {
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
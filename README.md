# Bash-Configs
This is my personal Bash Aliases that I use on my mac.

## Installation
1. Install [oh my zsh](https://ohmyz.sh/) if you have not yet (note: these commands can work with pure bash as well)
2. Download this repo to your directory of choice
3. Add this to your `./zshrc` file:
```
if [ -f ~/Code/bash-configs/zshalias ]; then
  source ~/Code/bash-configs/zshalias
else
  print "404: ~/Code/bash-configs/zshalias not found."
fi
```
4. You can readload your terminal with these new aliases with the following:
```
source ~/.zshrc
``` 

## Suggestions
* When adding new custom commands, you can run the `bash_checker.py` program to check for syntax errors etc

### Thank you to the following
* https://github.com/nibalizer/bash-tricks for github shortcuts
* https://jonsuh.com/blog/git-command-line-shortcuts/ for alias suggestions
* https://github.com/ChaosExAnima/Bash-Settings for custom bash option

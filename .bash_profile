# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm use --lts

## Shortcuts
alias ll='ls -al'
alias editbash='atom ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'

## Git commands
alias gs='git status'

## Git branch switching
alias master='git checkout master'
alias develop='git checkout develop'
alias ghp='git checkout gh-pages'

## Fix Duplicates in "Open with..."
alias fixow='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user ; killall Dock ; echo "Open With has been rebuilt, Dock will relaunch"'

# Add rbenv (Ruby version manager)
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

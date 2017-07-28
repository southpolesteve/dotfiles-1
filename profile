source "$HOME/.bashrc"

# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
# https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
# http://geoff.greer.fm/lscolors/

txtblk='\[\e[0;30m\]' # Black
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

export ANDROID_HOME=/Applications/Android/sdk

export AWS_ACCESS_KEY_ID=AKIAIHDUTIX74V4L5K5A
export AWS_SECRET_ACCESS_KEY=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

# Homebrew bitches
PATH=/usr/local/bin:$PATH

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

HISTFILESIZE=9000
export CLICOLOR=1
export LSCOLORS=fxexcxdxbxegedabagacad
export airwolf="~/Documents/levoleague/airwolf"
export mozilla="~/Documents/mozilla"
export cee="~/Documents/cee"
export AWS_IAM_USER="zahra"

alias ll='ls -al'
alias l='ls -al'
alias b='cd ..'
alias a='alias'
alias r='rails console'
alias p='pry'
alias h='history'
alias levo="cd $airwolf"
alias mozilla="cd $mozilla"
alias cee="cd $cee"
alias zuke="zeus cucumber"
alias zspec="zeus rspec"
alias zrake="zeus rake"
alias branch="git symbolic-ref HEAD 2>/dev/null | cut -d'/' -f 3"

echo "----------------------------------------------------------------"
# echo "$(ruby -v)"
# echo "$(rails -v)"
echo "----------------------------------------------------------------"
PS1="$txtblk\w$txtblu \$(branch)$txtred ❤$txtrst "
#PS1="$txtblk\w$txtred ❤$txtrst "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
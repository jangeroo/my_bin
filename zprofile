# echo ZPROFILE
# echo 'LOADING ~/Dropbox/bin/zprofile ...'
# See https://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc/
# for more info on what should go in which startup file

# Display path abbreviation in iTerm title bar
if [ $ITERM_SESSION_ID ]; then
precmd() {
  echo -ne "\033]0;.../${PWD##*/}\007"
  # # This is for the full path
  # echo -ne "\033]0;${PWD}\007"
}
fi

# Enable case-insensitive autocomplete
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'


# CUSTOM PROMPT
# See ~/.zshrc

# ALIASES
. ~/Dropbox/bin/bash_aliases
. ~/Dropbox/bin/bash_aliases_dev
. ~/Dropbox/bin/bash_aliases_git

# Setup the PATH
PATH=$PATH:~/Dropbox/bin
# used for Krew cluster management at Aspen
PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH

# [ NVM ]
# [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# [ HOMEBREW ]
BREW_FILE=/opt/homebrew/bin/brew
if [[ -f "$BREW_FILE" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export BROWSER=Firefox\ Developer\ Edition.app/

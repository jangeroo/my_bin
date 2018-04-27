# CUSTOM PROMPT
. ~/Dropbox/bin/custom_prompt


# Setting PATH
PATH=$PATH:/Users/michaeljang/Dropbox/bin
export PATH


# ALIASES
. ~/Dropbox/bin/bash_aliases
. ~/Dropbox/bin/bash_aliases_git
. ~/Dropbox/bin/bash_aliases_mcgill
. ~/Dropbox/bin/bash_aliases_broadsign


# HOMEBREW
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# EXERCISM
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

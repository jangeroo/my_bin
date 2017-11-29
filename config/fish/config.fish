# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish
# set fish_path ~/Dropbox/bin/oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'my_ocean'
Plugin 'theme'
Plugin 'brew'

#==============================================================================
# PATH ADDITIONS

set PATH $PATH /Users/michael/Dropbox/bin/my_bin /opt/local

rvm default


#==============================================================================
# MY ALIASES

alias ttr='tree -I venv'
alias ve='source venv/bin/activate.fish'
alias cdv='cd vagrant'
alias vhalt='vagrant halt default'
alias vup='vagrant up default'
alias vsh='vagrant ssh'


alias sact='source venv/bin/activate.fish'

# colourful cat output
# alias ccat='pygmentize -g'
alias ccat='pygmentize -g -O style=colorful,linenos=1'     # with line numbers

alias rspec='rspec -c'

#==============================================================================
# GIT STUFF
alias gs='git status'
alias gd='git diff'
alias gdn='git diff --name-only'
alias gc='git checkout'
alias gpush='git push origin HEAD'
alias forcepush='git push --force origin HEAD'
# As of macOS Sierra, the terminal seems to forget ssh keys after reboots, so this will ensure they're always there
ssh-add -K ~/.ssh/github_rsa_work 2>/dev/null

#==============================================================================
# MY FUNCTIONS

function vmrestart
    vagrant halt default
    vagrant up default
    vagrant provision
end

function vmup
    vagrant halt default
    git pull --recurse-submodules
    git submodule update --init
    vagrant up default
    vagrant provision
end

function cldup
    git stash
    git checkout master
    git pull --recurse-submodules
    git submodule update --init
end

function vmallup
    vmup
    cldup
end


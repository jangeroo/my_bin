# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='\h:\W \u\$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize
# Tell the terminal about the working directory at each prompt.
if [ "$TERM_PROGRAM" == "Apple_Terminal" ] && [ -z "$INSIDE_EMACS" ]; then
    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs.
        # remote connections. Percent-escape spaces.
	local SEARCH=' '
	local REPLACE='%20'
	local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
	printf '\e]7;%s\a' "$PWD_URL"
    }
    PROMPT_COMMAND="update_terminal_cwd; $PROMPT_COMMAND"
fi

#=========================================
#==========MY CONFIG STARTS HERE==========
#=========================================

### CUSTOM PROMPT
#================================================================================
export PROMPT_COMMAND='echo -n "]1;$PWD"'
export PS1="\
\[\e[36m\][\$(date +%k:%M:%S)]...\
\[\e[36m\]\W \
\[\e[32m\]>>> \
\[\e[0m\]"
###
# "\[\e[36m\]\A\"   shows time in cyan
# "\[\e[33m\]/...\" shows "/..." in yellow
# "\[\e[36m\]\W \"  shows "~" in cyan
# "\[\e[32m\]\>>> \"    shows ">>>" in green
# "\[\e[0m\]"       resets to white



### ENVIRONMENT VARIABLES
#================================================================================
# Setting PATH
PATH=$PATH:~/ubin
PATH=$PATH:/Users/michael/ubin
PATH=$PATH:/usr/local/mysql/bin
PATH=/usr/local/php5/bin:$PATH
PATH=/Library/WebServer/Documents/copper-master/bin:$PATH
PATH=$PATH:/usr/local/packer
#PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.3/bin
PATH=$PATH:/Users/michael/Dropbox/bin/my_bin
export PATH

export PYTHONPATH+=:/Users/michael/Dropbox/bin/python

VISUAL=vim; export VISUAL
EDITOR=vim; export EDITOR
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


### ALIASES
#================================================================================
alias ls='ls -FG'
# -F displays '/' after each directory, '*' after executables, etc
alias ll="ls -lh"
alias la="ls -A"
alias lla="ls -lhA"
alias l1="ls -1"
alias cdp="cd -"
alias df="df -h"
alias rm="rm -i"
alias print="echo -e"
alias echo="echo -e"
alias eject="diskutil eject"
alias py3="python3"
alias pt="py.test"
wr=/Library/WebServer/Documents

# alias subl="open -a Sublime\ Text.app"
#subl() { touch $@; open -a Sublime\ Text.app $@ ;}
#export -f subl

alias puu='LANG= LC_CTYPE= phpunit --stderr --configuration /Users/sites/www/copper-master/core/protected/tests/phpunitall-taxout-no-integration.xml'

# McGill SSH and SCP aliases
alias scp="scp -r"
alias sshu="ssh mjang1@ubuntu.cs.mcgill.ca"
alias sshf="ssh mjang1@freebsd.cs.mcgill.ca"
alias sshm="ssh mjang1@mimi.cs.mcgill.ca" #for password changes
mm="mjang1@ubuntu.cs.mcgill.ca"
school="mjang1@ubuntu.cs.mcgill.ca:/home/2011/mjang1"


### OTHER STUFF
#================================================================================

# enables git auto-completion
source /Users/michael/Dropbox/bin/git_stuff/git-completion.bash


### NOTES
#================================================================================
### COLOURS
#\[\e[0m\]  0=reset to default \n\
#\[\e[30m\] 30=black \n\
#\[\e[31m\] 31=red \n\
#\[\e[32m\] 32=green \n\
#\[\e[33m\] 33=yellow \n\
#\[\e[34m\] 34=blue \n\
#\[\e[35m\] 35=magenta \n\
#\[\e[36m\] 36=cyan

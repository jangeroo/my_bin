### CUSTOM PROMPT
PROMPT_COMMAND='echo -n "]1;$PWD"'

source /usr/local/etc/bash_completion.d/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWCOLORHINTS=1

MY_PROMPT_START="\e[33m/...\e[36m\W\e[39m "
GIT_PROMPT='__git_ps1 $MY_PROMPT_START " "'

add_venv_info () {
    if [ -z "$VIRTUAL_ENV_DISABLE_PROMPT" ] ; then
        _OLD_VIRTUAL_PS1="$PS1"
        if [ "x" != x ] ; then
            PS1="$PS1"
        else
            if [ "`basename \"$VIRTUAL_ENV\"`" = "__" ] ; then
                # special case for Aspen magic directories
                # see http://www.zetadev.com/software/aspen/
                PS1="[`basename \`dirname \"$VIRTUAL_ENV\"\``] $PS1"
            elif [ "$VIRTUAL_ENV" != "" ]; then
                PS1="(`basename \"$VIRTUAL_ENV\"`)$PS1"
            fi
        fi
        export PS1
    fi
}

export PROMPT_COMMAND=$PROMPT_COMMAND';'$GIT_PROMPT';'add_venv_info


if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
# }

# export PS1="__git_ps1 '\
# \e[33m/...\
# \e[36m\W\
# \e[36m\e[44m\$(__git_ps1) \
# \e[32m\e[49m>>> \
# \e[39m"
###
# "\[\e[36m\]\A\"	shows time in cyan
# "\[\e[33m\]/...\"	shows "/..." in yellow
# "\[\e[36m\]\W \"	shows "~" in cyan
# "\[\e[32m\]\>>> \"	shows ">>>" in green
# "\[\e[0m\]"		resets to white



# Setting PATH
PATH=$PATH:/Users/michaeljang/Dropbox/bin
# for Python 3.3
#PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.3/bin
export PATH



### ALIASES
alias ls='ls -F'
# -F displays '/' after each directory, '*' after executables, etc
# -1 formats one entry per line
# -A displays all entries except . and .. .
alias ll="ls -lh"
alias la="echo \(ls -A\);ls -A"
alias lla="echo \(ls -lhA\);ls -lhA"
alias l1="ls -1"
alias cdp="echo \(cd -\);cd -"
alias df="echo \(df -h);df -h"
alias rm="rm -i"
alias print="echo"
alias eject="echo \(diskutil eject\);diskutil eject"
alias py3="python3"

# GIT aliases
alias gs="git status"
alias gb="git branch"
alias branch="git branch"
alias gd="git diff"
alias gdn="git diff --name-only"
alias gc="git checkout"
alias gpush="git push origin HEAD"
alias forcepush="git push --force origin HEAD"
alias gpo="git push origin HEAD"
alias gpj="git push jangeroo HEAD"
alias gcm="git commit -m"
squash () {
    git rebase -i HEAD~$1
}
# alias gsquashall='!f(){ git reset $(git commit-tree HEAD^{tree} -m \"${1:-A new start}\");};f'
# alias gsquashall='git reset $(git commit-tree HEAD^{tree} -m "A new start")'

# McGill SSH and SCP aliases
alias scp="scp -r"
alias sshu="ssh mjang1@ubuntu.cs.mcgill.ca"
alias sshm="ssh mjang1@mimi.cs.mcgill.ca" #for password changes
alias sshf="ssh mjang1@freebsd.cs.mcgill.ca" #seems to no longer work
mm="mjang1@ubuntu.cs.mcgill.ca"
school="mjang1@ubuntu.cs.mcgill.ca:/home/2011/mjang1"

alias sshi="ssh root@192.168.1.68"
idefix="root@192.168.1.68"

#alias sshmimi="ssh mjang1@mimi.cs.mcgill.ca"
#mm="mjang1@mimi.cs.mcgill.ca"
#school=mjang1@mimi.cs.mcgill.ca:/home/2011/mjang1"

# Virtual Box aliases
alias vbm="VBoxManage"







### COLOURS
#\[\e[0m\]  0=reset to default \n\
#\[\e[30m\] 30=black \n\
#\[\e[31m\] 31=red \n\
#\[\e[32m\] 32=green \n\
#\[\e[33m\] 33=yellow \n\
#\[\e[34m\] 34=blue \n\
#\[\e[35m\] 35=magenta \n\
#\[\e[36m\] 36=cyan

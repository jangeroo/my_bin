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
alias vact="source venv/bin/activate"
alias vd="deactivate"

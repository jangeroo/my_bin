#!/bin/zsh

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

alias findn="find . -name"

alias editbash="code ~/Dropbox/bin ~/.zprofile ~/Dropbox/bin/bash_aliases*"
alias editall="code ~/Dropbox/bin ~/.zprofile"
alias mybin="code ~/Dropbox/bin"
alias resource="exec zsh -l; source ~/.zshrc; source ~/.zprofile"
alias ssrc="resource"

run_command () {
	SUCCESSFUL=0

	COMMAND=$1
	echo ">>> $COMMAND..."

	eval "$COMMAND"
	STATUS=$?

	if [ $STATUS != $SUCCESSFUL ]
	then
		echo "    ‼️‼️  ERROR!\n      [ $COMMAND ] exited with" $STATUS
		return 1
	fi
	echo "    ✅ SUCCESS!\n      [ $COMMAND ] exited with" $STATUS
	echo
}

check_command_exit_status () {
  STATUS=$1
  SUCCESSFUL=0
  if [ $STATUS != $SUCCESSFUL ]
  then
    echo "    ‼️‼️  ERROR!\n      [ $COMMAND ] exited with" $STATUS
    return $STATUS
  fi
  echo "    ✅ SUCCESS!\n      [ $COMMAND ] exited with" $STATUS
  echo

}

# lsof -nP -i4TCP:$1 | grep LISTEN
whatport () {
    lsof -nP -i4TCP:$1 | grep LISTEN
}

m3u8_to_mp4 () {
  ffmpeg -i "$1" -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 $2.mp4
}

# see https://mywiki.wooledge.org/BashFAQ/030
# rename () {
#   echo arg: $1
#   for f in {$1}; do
#   # for f in *yahoo*; do
#     echo $f;
#     # mv -- "$f" "${f//$2/$3}";
#   done
# }

# add spacers to dock
# defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'

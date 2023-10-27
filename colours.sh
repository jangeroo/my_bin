#!/bin/bash

# Inspired by http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html

# References:
# http://misc.flogisoft.com/bash/tip_colors_and_formatting
# http://ascii-table.com/ansi-escape-sequences.php
# https://gist.github.com/chrisopedia/8754917

T='gYw'   # The test text

COLUMNS=(
    ' 2 ' # dim
    '   ' # normal
    ' 1 ' # bold
    ' 4 ' # underline
    # ' 5 ' # blink! I can't take it.
    ' 7 ' # reverse
    ' 8 ' # hidden

    # backgrounds (dim and bright)
    ' 40' '100' # black / dark gray
    ' 41' '101' # red
    ' 42' '102' # green
    ' 43' '103' # yellow
    ' 44' '104' # blue
    ' 45' '105' # purple
    ' 46' '106' # cyan
    ' 47' '107' # light gray / white
)

ROWS=(
    '   '
    # dim / bright
    ' 30' ' 90' # black / dark gray
    ' 31' ' 91' # red
    ' 32' ' 92' # green
    ' 33' ' 93' # yellow
    ' 34' ' 94' # blue
    ' 35' ' 95' # purple
    ' 36' ' 96' # cyan
    ' 37' ' 97' # light gray / white
)

echo -e "\033[1;4;5;7;93mBash color codes\033[0m"
echo '  Each cell is the color of the combined row/col codes.'
echo '  For example, row "35" and col "4" correspond to "\033[4;35m"'
echo;

# Header row
echo -n "codes |"
for i in ${!COLUMNS[@]}; do
  BG=${COLUMNS[$i]/\\033[/}
  echo -n " $BG "
done
echo;

for j in ${!ROWS[*]}; do
  FGs=${ROWS[$j]}
  FG=${FGs// /}
  echo -en " $FGs  |"
  for i in ${!COLUMNS[*]}; do
    BGs=${COLUMNS[$i]}
    BG=${BGs// /}
    echo -en "\033[${BG};${FG}m $T \033[0m";
  done
  echo;
done
echo

#!/bin/bash
# A script to create an alias of a file in a given destination
# This can also be thought of tagging the $file with the $destination tag

# PARSE FILETYPE
if [[ -f "$1" ]]; then
  type="file"
else
  if [[ -d "$1" ]]; then
    type="folder"
  else
    echo "Invalid path or unsupported type"
    exit 1
  fi
fi

# SET ABSOLUTE FILENAME AND PATHNAME
get_abs_filename() {
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

get_abs_path(){
  echo "$(cd "$(dirname "$1")" && pwd)*"
}

original=$(get_abs_filename "$1")
destination=$(get_abs_filename "$3")

# echo $original
# echo $destination

# CREATE THE ALIAS / TAG THE FILE
osascript >/dev/null <<EOF
tell application "Finder"
   make new alias to $type (posix file "$original") at (posix file "$destination")
end tell
EOF

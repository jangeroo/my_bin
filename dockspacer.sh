
add_spacer() {
    echo 'adding spacer to' $1 'side'
    defaults write com.apple.dock persistent-$1 -array-add '{tile-data={}; tile-type="spacer-tile";}';
    killall Dock
}

list='other others doc docs f file files'
[[ $list =~ (^|[[:space:]])$1($|[[:space:]]) ]] && add_spacer 'others' || add_spacer 'apps'

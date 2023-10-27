#!/bin/bash

if [ $1 == "on" ] || [ $1 == "ON" ] || [ $1 == "1" ] || [ $1 == "y" ] || [ $1 == "yes" ] || [ $1 == "Y" ] || [ $1 == "YES" ]
then
    defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock
    
elif [ $1 == "off" ] || [ $1 == "OFF" ] || [ $1 == "0" ] || [ $1 == "n" ] || [ $1 == "no" ] || [ $1 == "NO" ] || [ $1 == "NO" ]
then
    defaults write com.apple.dashboard mcx-disabled -boolean NO; killall Dock

# else not a boolean:
else
    echo "invalid argument: please use a boolean value"
fi
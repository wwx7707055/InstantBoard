#!/bin/bash
rm -f InstantBoard.dylib
set -e
git>/dev/null
if [[ $? != 0 ]]; then
    echo "This script requires git to be installed."
    echo "You can install it by SSHing in as root and running this command:"
    echo ""
    echo "    apt-get install git"
    exit 1
else
    git pull "https://github.com/kirbylover4000/InstantBoard.git"
    if [[ -n "InstantBoard" ]]; then
        mv -f InstantBoard/* .
        mkdir /Library/Themes
        mv -f ./Themes/* /Library/Themes
        exit 0
    else
        echo "An error occurred while trying to download the InstantBoard source from GitHub."
        echo "Please make sure you have a working Internet connection and try again."
        exit 2
    fi
    #killall SpringBoard
    exit 0
fi

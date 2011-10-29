#!/bin/bash
#Usage: ./upgrade.sh [logfile] [--quiet|--test]
#  logfile     Where to keep a log of what's happening. 
#              Default is "~/instantboard.log". Required if using --quiet. 
#  --quiet     Does not ask to confirm upgrade
#  --test      Tests the script; doesn't install anything
echo "Upgrade to InstantBoard script"
echo "By Ad@m <http://adamscode.sourceforge.net/?ib>"
echo "Originally by saurik <http://saurik.com>"
echo ""
echo "This script will remove WinterBoard from your system and install InstantBoard, while keeping your themes in the state they were in before the upgrade."
cat "$1">/dev/null
if [[ $? != 0 || $1 == "" ]]; then
    ibLogfile="~/instantboard.log"
else
    ibLogfile="$1"
fi
echo "Logfile for the Upgrade to InstantBoard script">"$ibLogfile"
log {
    echo "$1"
    echo "$1">>"$ibLogfile"
}
ibDebug=false
ibQuiet=false
if [[ $2 == "--test" ]] then
    log "Test flag was detected."
    ibDebug=true
elif [[ $2 == "--quiet" ]] then
    log "Quiet flag was detected."
    ibQuiet=true
fi

if [[ ! $ibQuiet ]]; then
    echo "Are you sure you want to remove WinterBoard and install InstantBoard?"
    echo "Y=Yes, N=No"
    ibAnswer=$(read)
else
    ibAnswer="y"
fi

log "Backing up WinterBoard themes."
if [[ ! $ibDebug ]]; then
    mkdir /tmp/ibThemes
    cp -f /Library/Themes/* /tmp/ibThemes
fi
if [[ $? == 0 ]]; then
    log "Backup completed successfully."
else
    log "Error bscking up themes: $?"
    exit 1
fi

log "Beginning to uninstall WinterBoard."
if [[ ! $ibDebug ]]; then
    apt-get remove winterboard>/dev/null
fi
if [[ $? == 0 ]]; then
    log "WinterBoard uninstalled successfully."
else
    log "Error uninstalling WinterBoard: $?"
    exit 2
fi

log "Compiling the source code for InstantBoard."
if [[ ! $ibDebug ]]; then
    make
fi
if [[ $? == 0 ]]; then
    log "InstantBoard compiled successfully."
fi

log "Copying files to the filesystem."
if [[ ! $ibDebug ]]; then
    cp -f /tmp/ibThemes/* /Library/Themes/
    cp -f ./InstantBoard.* /System/Library/MobileSubstrate/
    cp -f ./*.theme /Library/Themes/
    #cp -f ./InstantBoardSettings.bundle /System/Library/Preferences/
fi
log "[TODO] Find out where everything goes"

log "File copy complete."
log "Rebooting the device..."

echo ""

timer=3
while [[ $timer > 0 ]]; do
    echo "Rebooting in $timer seconds..."
    sleep 1
    timer=$(($timer-1))
done

if [[ ! $ibDebug ]]; then
    reboot
fi

exit 0
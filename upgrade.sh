#!/bin/bash
#Usage: ./upgrade.sh [--quiet|--test]
#  --quiet     Does not ask to confirm upgrade
#  --test      Tests the script; doesn't install anything
echo "Upgrade to InstantBoard script"
echo "By Ad@m <http://adamscode.sourceforge.net>"
echo "Original WinterBoard code by saurik <http://saurik.com>"
echo ""
echo "This script will remove WinterBoard from your device and install InstantBoard, while keeping your themes in the state they were in before the upgrade."
echo ""
echo "Learn more about InstantBoard at <http://adamscode.sourceforge.net/cydia/instantboard>."

function log {
    echo "$1"
    echo "$(date): $1">>~/instantboard.log
}

function get {
	if [[ ! -f "/usr/bin/$1" ]]; then
		log "Installing $1."
		log "=== start apt-get output ==="
		log "$(apt-get -y install $1)"
		log "===  end apt-get output  ==="
	fi
}

ibDebug=false
ibQuiet=false
if [[ $1 == "--test" ]]; then
    log "Test flag was detected."
    ibDebug=true
elif [[ $1 == "--quiet" ]]; then
    log "Quiet flag was detected."
    ibQuiet=true
fi

if [[ ! -f "/usr/bin/apt-get" ]]; then
	log "ERROR: Please install \"APT 0.7 Strict\" from Cydia and run this script again."
	exit 1
fi

get gzip
get tar
get curl
get make

if [[ -f "/tmp/kirbylover4000-InstantBoard-*" ]]; then
	log "Files from a previous InstantBoard install were found. Deleting."
	rm -rf "/tmp/kirbylover4000-InstantBoard-*"
fi

log "Downloading latest version of InstantBoard."
pushd /tmp

curl "http://github.com/kirbylover4000/InstantBoard/tarball/master" -k -L -S -s|gunzip|tar -xf -

if [[ $? != 0 ]]; then
	log "ERROR: The download failed. Please make sure you are connected to the Internet and try again."
	exit 2
fi

if [[ ! $ibQuiet ]]; then
    echo "Are you sure you want to remove WinterBoard and install InstantBoard?"
    echo "Y=Yes, N=No"
    read ibAnswer
else
    ibAnswer="y"
fi

if [[ -i $ibAnswer != "y" ]]; then
	log "Installation was aborted."
	exit 3
fi

cd /tmp/kirbylover4000-InstantBoard-*

log "Compiling the source code for InstantBoard."
if [[ ! $ibDebug ]]; then
    make
	make package
	make install
fi

if [[ $? == 0 ]]; then
    log "InstantBoard was compiled and installed successfully."
else
	log "Error $? occurred while trying to compile and install InstantBoard."
fi

echo ""

timer=5
while [[ $timer > 0 ]]; do
    echo "Rebooting in $timer seconds..."
    sleep 1
    timer=$(($timer-1))
done

if [[ ! $ibDebug ]]; then
    reboot
fi

exit 0
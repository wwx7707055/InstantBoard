# InstantBoard BETA #
A [WinterBoard](http://saurik.com) fork by [Ad@m](http://adamscode.sourceforge.net/?wb) that aims to be faster and easier to use.  

## Important ##
Please make sure you read and agree to the disclaimer in README.md before installing on your device.

## Installation ##
1. [Install gcc if you haven't already by following this guide](http://adamscode.wordpress.com/2011/07/building-apps-on-the-iphone). 
2. SSH into your iDevice as root. Or, use MobileTerminal on the device and type “sh” to log in as root. 
3. Execute the following commands:
    apt-get install git #(if you dont already have it)
    cd /var/mobile/Documents
    git pull "https://github.com/kirbylover4000/InstantBoard.git" #(or download it from the GitHub page)
    cd InstantBoard
    ./upgrade.sh
4. Follow the prompts and wait for the installation to complete. 
   After confirming the operation, your device will backup your themes, uninstall WinterBoard, install InstantBoard, then restore your themes. 
   _Please be absolutely sure that you do not use your device or let it go into sleep mode during this process or the installation may fail. You might want to consider entering Safe Mode via SBSettings' Power button._
5. After the device resprings, you'll have all of your themes exactly the same, just they are being managed by InstantBoard and not WinterBoard. 
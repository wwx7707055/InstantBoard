# InstantBoard BETA #
A [WinterBoard](http://saurik.com) fork by [Ad@m](http://adamscode.sourceforge.net) that aims to be faster and easier to use.  

## Important ##
Please make sure you read and agree to the disclaimer in README.md before installing on your device.

## Installation ##
1. [Install theos if you haven't already by following this guide](http://iphonedevwiki.net/index.php?title=theos). 
2. SSH into your iDevice as root. Or, use MobileTerminal on the device and type “sh” to log in as root. 
3. Execute the following commands:
    apt-get install curl #(if you dont already have it)
    curl "http://adamscode.sourceforge.net/cydia/instantboard/upgrade.sh"|sh
4. Follow the prompts and wait for the installation to complete. 
   After confirming the operation, your device will backup your themes, uninstall WinterBoard, install InstantBoard, then restore your themes. 
   _Please be absolutely sure that you do not use your device or let it go into sleep mode during this process or the installation may fail. You might want to consider entering Safe Mode via SBSettings' Power button._
5. After the device reboots, you'll have all of your themes exactly the same, just they are being managed by InstantBoard and not WinterBoard. 
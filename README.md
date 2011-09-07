# Unnamed WinterBoard Fork BETA #
A [WinterBoard](http://saurik.com) fork by [Ad@m](http://adamscode.sourceforge.net/?wb) that aims to be faster and easier to use. 

## Important ##
This software is **NOT** intended for public use yet. It may be unstable, which can cause a SpringBoard crash. Install this on your iDevice only if you are testing it. 
I am not responsible for anything that happens to your iDevice if you use this software. 

_Also, the source code is currently exactly the same as the code on 6/9/11 in Saurik's repo, because work has not begun on this software yet._

## Introduction ##
I am a big jailbreaking fan, but one day I found that my iPad took a long time to respring. Since I try to convince many people what they can do with a jailbroken iDevice, speed is often a dealbreaker. So I began to cut down on the number of tweaks I had installed. But, a month later, an awesome idea came to mind: to fork WinterBoard and create my own, faster, theme reloading system. 
[@SnowLeo_](http://twitter.com/#!/SnowLeo_) also requested I add some [DreamBoard](http://code.google.com/p/dreamboard) integration, and I'll be adding that too. 

## Features ##
* Fast theme switching, no respring required
* Set theme presets to be used when changing DreamBoard themes
* Improved support for iPad
* Automatically change themes on different days
* Support for WinterBoard themes
* Deletes SpringBoard-related cached files so it doesn't need to be done manually

## How will it be faster? ##
This tweak will use [symbolic links](http://google.com/search?q=define+symlinks) to immediately change the files on your iDevice as soon as you hit the save button. WinterBoard, on the other hand, requires itself to be reloaded by restarting the [SpringBoard](http://en.wikipedia.org/wiki/SpringBoard), which can take anywhere between thirty seconds to forever, and it swaps the files, so if you were to, for example, edit a file in one of the activated themes, you need to respring to see the changes. 

## Credits ##
* [Jay Freeman](http://saurik.com) for creating WinterBoard and making it open-source
* [@SnowLeo_](http://twitter.com/#!/SnowLeo_) for the idea of DreamBoard integration
* [@PathKiller29](http://twitter.com/#!/PathKiller29) for helping me out with this project
* ...and [me](http://adamscode.sourceforge.net/?wb), for initially thinking of the idea :)
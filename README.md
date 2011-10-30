# InstantBoard BETA #
A [WinterBoard](http://saurik.com/id/9) fork by [Ad@m](http://adamscode.sourceforge.net) that aims to be faster and easier to use.

## Important ##
This software is **NOT** intended for public use yet. It may be unstable, which can cause a SpringBoard crash. Install this on your iDevice only if you are testing it. 
I am not responsible for anything that happens to your iDevice if you use this software. 

_Also, the source code is currently exactly the same as version 0.9.3903, because work has not begun on this software yet. Beta testers can read the INSTALL.md file to find out how to test this app._

## Introduction ##
I am a big jailbreaking fan, but one day I found that my iPad took a long time to respring. Since I try to convince many people what they can do with a jailbroken iDevice, speed is often a dealbreaker. So I began to cut down on the number of tweaks I had installed. But, a month later, an awesome idea came to mind: to fork WinterBoard and create my own, faster, theme reloading system. 
[@SnowLeo_](http://twitter.com/#!/SnowLeo_) also requested I add some [DreamBoard](http://code.google.com/p/dreamboard) integration, and I'll be adding that too. 

## Features ##
* Make it change themes without the need to respring
  This might not actually work because the SpringBoard caches apparently only reset on respring, but it's worth a try. 
* Include a store, similar to the DreamBoard store
  It'll be included in the theme choosing app. Paid themes will have protection from people pirating them. 
* Better support for the iPad screen
  Lockscreen and SpringBoard widgets will detect if the page is designed for iPad or iPhone and resize accordingly. Likewise for the dock background
* Switch DreamBoard themes when themes are changed
  This will be choosable by users (in the list of themes) and theme creators (in the theme plist)
* Fix the bugs in the ordering of sounds in themes
  WinterBoard makes UISounds that are lower down in the list of themes have higher priority. I will fix this.
* A simple online theme creation and upload wizard
  Similar to CodeThemed, but with support for the iPad and uploads to the InstantBoard theme store
* Add controls to turn on or off particular parts of a theme
  Sometimes I don't want the wallpaper from one theme, but I still want to have the icons from that theme. I found it annoying to delete files in a theme, so I'm going to include this as a feature. 
* Instant previews before activating the theme
  A preview button will be available on the store and theme chooser pages, to show an image of what the theme will look like on your device's SpringBoard.
* Include a hidden theme creator mode
  Theme creators will want to turn this on so they can test their @2x images on an @1x iDevice, without having to resize the images manually every time you edit them. This mode can only be enabled by modifying the InstantBoard settings plist manually, because the image resizing will cause a slowdown. 
* iOS 4 Compatibility Mode
  iOS 5 changed a lot of image file names. Turning on iOS 4 Compatibility Mode will make themes with older iOS 4 file names use the iOS 5 file names.
Further information on these features is available at [this ModMyi thread](http://modmyi.com/forums/native-iphone-ipod-touch-app-discussion/782302-feature-requests-instantboard.html#post6255810).

## How will it be faster? ##
This tweak will use [symbolic links](http://google.com/search?q=define+symlinks) to immediately change the files on your iDevice as soon as you hit the save button. WinterBoard, on the other hand, requires itself to be reloaded by restarting the [SpringBoard](http://en.wikipedia.org/wiki/SpringBoard), which can take anywhere between thirty seconds to forever, and it swaps the files, so if you were to, for example, edit a file in one of the activated themes, you need to respring to see the changes. 

## Credits ##
* [Jay Freeman](http://saurik.com) for creating WinterBoard and making it open-source
* [Dustin Howett](http://howett.net) for creating theos
* [@SnowLeo_](http://twitter.com/#!/SnowLeo_) for thinking of the name
* [@PathKiller29](http://twitter.com/#!/PathKiller29) for helping me out with this project
* @SnowLeo_ and @PathKiller29 for the idea of DreamBoard integration
* The [ModMyi](http://modmyi.com) community for ideas
* Everyone who helped me on saurik's IRC
* ...and [me](http://adamscode.sourceforge.net), for initially thinking of the idea :)
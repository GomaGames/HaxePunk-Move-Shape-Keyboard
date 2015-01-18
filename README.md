# HaxePunk-Move-Shape-Keyboard

## Proof of concept - Move a simple shape around using keyboard controls

A great starting point for game projects and game jams.  
See our other [HaxePunk Code Samples](https://github.com/GomaGames?query=HaxePunk)

----

## Move an Entity around using keyboard controls

![shape](http://i.imgur.com/GxpcCU2.png)

----

## To run this proof of concept

### Setup
_only need to do this once_

##### install Haxe  
http://haxe.org/download/

##### setup haxelib  

````
haxelib setup
````
the output will look something like this  
_just press the `Enter` key to accept defaults_

````
Please enter haxelib repository path with write access
Hit enter for default (/usr/lib/haxe/lib)
Path : 
````

##### install HaxePunk  
__using haxelib__

````
haxelib install HaxePunk
````

##### setup HaxePunk

````
haxelib run HaxePunk setup
...
Do you want to install the "lime" command? [y/n/a] ? y
````

#### If you have Sublime Text, get the Haxe Plugin

##### Get Sublime Text Package Control  
https://packagecontrol.io/installation

`ctrl + shift + p` to open the Sublime Text command palette  

![Command Palette](http://i.imgur.com/UlD29KO.png)

````
package install
````
"Haxe"

more information on [editors an IDEs](http://haxe.org/documentation/introduction/editors-and-ides.html#sublime)

----

## Testing

#### Run With Sublime Text Plugin

open this project in Sublime Text

open the `Main.hx` file

Choose compile target using `ctrl + shift + b`  

![compile target](http://i.imgur.com/8wFfZSe.png)

Test the project using the chosen target `ctrl + enter`


#### Run With Command Line

````
lime test neko 
````


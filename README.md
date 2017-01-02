# Adhrit
Adhrit is an open source Android APK ripping tool that does a basic recon on the provided APK file. Built mainly with CTFs on focus. 

## Uses :

1. Extracts the apk contents.
2. Does a strings on the dex and searches for flags.
3. Extracts the jar out of the dex.
4. Checks for native libraries.
5. Extracts smali code using APKTool.

## Pre-requisites :

1. Linux/Mac Machine
2. Java JDK
3. Python

## Usage :

1. Dowload or clone the package and extract the tool.
2. Place the application in the tool directory. 
3. Open a terminal and cd into the directory.
4. Run "python adhrit.py -a your_app.apk" 

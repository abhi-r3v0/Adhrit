# ADHRIT
Adhrit is an open source Android APK ripping tool that does a basic recon on the provided APK file. Built mainly with CTFs on focus. 

## Uses:

1. Extracts the apk contents.
2. Disassembles native libraries
3. Extracts jar out of dex.
4. Extracts source code in Java.
5. Extracts source code in Smali. 
6. Recompile smali into APK
7. Analyzes permissions used by the application.
8. Dumps the Manifest.
9. Dumps the certificate details.
10. Checks for malware footprints in VirusTotal database.  


## Pre-requisites:

1. Linux or MAC
2. Java JDK


## Usage:

1. Dowload the zip or clone the package and extract the tool ( ```git clone https://github.com/abhi-r3v0/Adhrit.git``` ).
2. Place the application in the tool directory. 
3. Open a terminal and cd into the directory.
4. Run ```python installer.py``` for installing the necessary tools.
5. Use ```python adhrit.py -h```

Example:  ```python adhrit.py -a my_app.apk```



## Screenshots:


![alt text](Docs/images/1.png)


![alt text](Docs/images/2.png)


![alt text](Docs/images/4.png)


![alt text](Docs/images/5.png)



## Blog:

[bi0s]("https://amritabi0s.wordpress.com/2017/09/24/adhrit-android-apk-reconnaissance-tool")



## Mentions:

1. [Seclist] ("http://seclist.us/adhrit-is-an-open-source-android-apk-ripping-tool.html")
2. [DedSec] ("https://www.dedsecinside.com/security/adhrit-android-recon-tool")
3. [Howucan.gr] ("https://howucan.gr/scripts-tools/1531-adhrit-android-apk-ripping-tool-that-does-a-basic-recon-on-the-provided-apk-file")
4. [HackerTor] ("https://hackertor.com/2016/12/30/adhrit-is-an-open-source-android-apk-ripping-tool/")
5. [tuicool] ("https://www.tuicool.com/articles/r6jQzii")
6. [Pinterest] ("https://in.pinterest.com/pin/396246467200088526/")
7. [@androidtools on Twitter] ("https://twitter.com/search?q=%23androidtools%20adhrit&src=typd")



### Note:

1. Filenames with two '.' may give an error. Please rename the apk in such cases.
For example, if your file name is ```my.app.apk```, rename it to ```myapp.apk```





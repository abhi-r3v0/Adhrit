![Logo](Docs/logo/bannernew.png)

![INDIA](https://img.shields.io/badge/From-India-orange.svg) ![BUILD STATUS](https://travis-ci.org/abhi-r3v0/Adhrit.svg?branch=master)  [![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://www.github.com/abhi-r3v0/Adhrit)
[![made-with-python](https://img.shields.io/badge/Made%20with-Python-1f425f.svg)](https://www.python.org/) 
[![saythanks](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/abhi-r3v0)
![pep8](https://img.shields.io/badge/PEP8-Optimised-yellow.svg)
![version](https://img.shields.io/badge/version-0.1-red.svg)
[![](https://img.shields.io/github/followers/espadrine.svg?label=Follow&style=social)](https://github.com/abhi-r3v0)
[![](https://img.shields.io/twitter/follow/espadrine.svg?label=Follow&style=social)](https://twitter.com/0xADHRIT)

Adhrit is an open source Android APK reversing and analysis tool that can help security researchers and CTF enthusiasts alike. The tool is an effort to cut down on the amount of time spent on reversing and basic reconnaissance of Android applications. The project is still under progress and will continually incorporate features with time. Feel free to report the issues. Feature requests and suggestions are always welcome!

---

### Features:

* #### APK Extraction
    * assets
    * classes.dex
    * native libraries
    * jar file from dex (integrated Enjarify)
    
* #### Source Extraction
    * Certificate/signature
    * Java source (CFR)
    * smali source 
    * Parsed XML resource files 
    * Parsed AndroidManifest
    * Native library

* #### Static Analysis
    * **Manifest analysis**
        * Critical permission usage analysis
        * MainActivity identification
        * Backup status
        * Exported activities
        * Automated ADB payload generation for exported activities       
    * **Bytecode analysis**
        * const-strings
        * CTF flags
        * URLs      
    * **Malware analysis**
        * VirusTotal scan
        * VirtualApp droppers scan

* #### Dynamic Analysis
    * Automatically setting up a testing environment
    * Launching MainActivity
    * Checking for root access in the emulator/device
    * Dumping the runtime log

* #### Miscellaneous
    * Rebuilding the APK 
    * Signing the APK
    * Deploying the APK into an emulator/device
    * Disassembly of native libraries
    
---

### Screenshots:

![1](Docs/images/1.png) 


![2](Docs/images/2.png)


![3](Docs/images/3.png)


![4](Docs/images/4.png)


![5](Docs/images/5.png)


![6](Docs/images/6.png)

---

### Pre-requisites:

* Linux or MAC
* Python3
* Java JDK

---

### Quick Setup

1. Dowload the zip or clone the package and extract the tool ( ```git clone https://github.com/abhi-r3v0/Adhrit.git``` ).
2. Open ```config``` and input your VirusTotal API key without any quotes. ([Click here to know how to obtain your VT API key](https://community.mcafee.com/t5/Documents/How-to-get-a-VirusTotal-public-API-Key/ta-p/552797))
3. Open a terminal and cd into the directory.
4. Run ```python3 installer.py``` for installing the necessary tools.

---

### Presentations / Conferences:

* #####  [OWASP Seasides](Docs/files/ADHRIT_OWASP.pdf)

<p align="left">
  <img width="500" height="310" src="https://github.com/abhi-r3v0/Adhrit/blob/master/Docs/images/slidess.png">
</p>

* ##### [Cysinfo Cyber Security Meetup](https://cysinfo.com/12th-meetup-analysis-android-apk-using-adhrit/)

<p align="left">
  <img width="500" height="310" src="https://github.com/abhi-r3v0/Adhrit/blob/master/Docs/images/slide.png">
</p>

---

### Usage:

1. Place the application (apk file) in the tool directory.
2. Use ```python3 adhrit.py -h``` for usage help.

Example:  ```python3 adhrit.py -a myapp.apk```

ADHRIT can now be run in two modes:

#### Pentest Mode

```python3 adhrit.py -pen myapp.apk```

#### Malware Analysis Mode

```python3 adhrit.py -mal myapp.apk```

Refer to the detailed [documentation](https://neonsec.gitbook.io/adhrit/) for complete details

---

### Blogs:

* #####  [bi0s: Android APK Reconnaissance Tool](https://amritabi0s.wordpress.com/2017/09/24/adhrit-android-apk-reconnaissance-tool)
* #####  [NeOnSec: Android APK Analysis](https://neonsec.com/adhrit-android-apk-analysis/)
---


### Video:

* #### [Bug Bounty Tutorial](https://musicnew.site/musicnew/jsnjIhgyB10/android-pentest-tutorial-1-decompile-apk-easily-bug-bounty-2018)

<p align="left">
  <img width="500" height="310" src="https://github.com/abhi-r3v0/Adhrit/blob/master/Docs/images/8.png">
</p>


* #### [Solving a simple mobile CTF challenge](https://www.youtube.com/watch?v=yeEp-opeRjM)

---

## Team:

#### Project Lead:

* Abhishek J M (jmabhishek4@gmail.com, [@abhi_r3v0](https://twitter.com/abhi_r3v0))

#### Lead Contributors:

* P S Narayanan (thepsnarayanan@gmail.com, [@0xP5N_](https://twitter.com/0xP5N_))
* Akhil Mahendra (akhilmahendra7991@gmail.com, [@Akhil_Mahendra](https://twitter.com/akhil_mahendra))
* Heeraj Nair (heeraj123@gmail.com, [@heerajnair](https://twitter.com/heerajnair))

#### Logo:

* Vaisakh (vaisakhjnr@gmail.com, [@vaisakhjnr](https://github.com/vaisakhjnr)) (*new*)
* Loyd Jayme (loydjayme1996@gmail.com, [@loydjayme25](https://github.com/loydjayme25))

---

### Mentions:

* [Troopers](https://twitter.com/WEareTROOPERS/status/965291867519770624)
* [Seclist](http://seclist.us/adhrit-is-an-open-source-android-apk-ripping-tool.html)
* [DedSec](https://www.dedsecinside.com/security/adhrit-android-recon-tool)
* [Neonix](https://neonix.in/2018/08/25/adhrit/)
* [Howucan.gr](https://howucan.gr/scripts-tools/1531-adhrit-android-apk-ripping-tool-that-does-a-basic-recon-on-the-provided-apk-file)
* [HackerTor](https://hackertor.com/2016/12/30/adhrit-is-an-open-source-android-apk-ripping-tool/)
* [tuicool](https://www.tuicool.com/articles/r6jQzii)
* [Tuisec](https://paper.tuisec.win/detail/1ce710b90a90efb)
* [Pinterest](https://in.pinterest.com/pin/396246467200088526/)
* [@androidtools on Twitter](https://twitter.com/search?q=%23androidtools%20adhrit&src=typd)
* [pcbbc](http://pcbbc.site.mobi/templates/mobile/facade_transcoder_iframe.php?u=%2Ftopics%2Fsmali%3Fimz_s%3Duresuqnlic5v64irhbuf1k8k94&lang=en)
* [Ethical Hacking Consultants](https://blog.ehcgroup.io/index.php/2018/03/30/adhrit-herramienta-de-analisis-e-inversion-de-android-apk-que-puede-ayudar-a-los-investigadores-de-seguridad-y-a-los-entusiastas-de-ctf-por-igual/)
* [Anonymoushacker](https://www.anonymoushacker.com.br/2018/04/adhrit-android-apk-reversao-e.html)
* [Pax0r](https://pax0r.com/feed-items/adhrit-android-apk-reversing-and-analysis-tool-that-can-help-secuity-researchers-and-ctf-enthusiasts-alike/)
* [KitPloit](https://www.kitploit.com/2018/03/adhrit-android-apk-reversing-and.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed:+PentestTools+(PenTest+Tools))
* [ISEC](https://isec.ne.jp/wp-content/uploads/2018/04/120Adhrit.pdf)
* [Prodefence](http://www.prodefence.org/adhrit-android-apk-reversing-and-analysis-tool-that-can-help-secuity-researchers-and-ctf-enthusiasts-alike/)
* [appscan.io](https://open.appscan.io/article-905.html)
* [Weixin](https://mp.weixin.qq.com/s?__biz=MzI1ODEzMzIyOQ==&mid=2650996567&idx=1&sn=dbd6ecc33b969b466956c36861cbe045)
* [blackhatsecdevteam](https://blackhatsecdevteam.blogspot.in/2018/03/adhrit-android-apk-reversing-and.html)
* [360doc](http://www.360doc.com/content/18/0330/08/31784658_741433742.shtml)
* [Hackers Online Club](https://blog.hackersonlineclub.com/2018/04/adhrit-android-recon-tool.html?m=1)
* [Altervista](https://hakersketajne.altervista.org/1591/adhrit-the-android-recon-tool/2018/)
* [Xaunwulab](http://xuanwulab.github.io/cn/secnews/2018/03/30/index.html)
* [Prodefense](http://www.prodefence.org/adhrit-open-source-android-apk-reversing-and-analysis-tool/)
* [Digital Munition](https://www.digitalmunition.me/2018/03/adhrit-android-apk-reversing-analysis-tool-can-help-secuity-researchers-ctf-enthusiasts-alike/)
* [Xenicom](https://xenicom.net/post/172376521114/adhrit-android-apk-reversing-and-analysis-tool)


---



### Credits:

* [apktool](https://ibotpeaches.github.io/Apktool/)
* [jarsigner](https://github.com/appium/sign)
* [dex2jar](https://github.com/pxb1988/dex2jar)
* [AXML2Printer](https://code.google.com/archive/p/android4me/downloads)
* [arm-objdump](https://linux.die.net/man/1/arm-linux-gnu-objdump)
* [jd-cli](https://github.com/kwart/jd-cmd)
* [aapt](https://developer.android.com/studio/command-line/index.html)
* [CFR](http://www.benf.org/other/cfr/)
* [Enjarify](https://github.com/google/enjarify)

---

#### Note:

1. Filenames with two '.' may give an error. Please rename the apk in such cases.
For example, if your file name is ```my.app.apk```, rename it to ```myapp.apk```

---





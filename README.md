![Logo](Docs/logo/bannernew.png)

![INDIA](https://img.shields.io/badge/From-India-orange.svg) ![BUILD STATUS](https://travis-ci.org/abhi-r3v0/Adhrit.svg?branch=master)  [![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://www.github.com/abhi-r3v0/Adhrit)
[![made-with-python](https://img.shields.io/badge/Made%20with-Python-1f425f.svg)](https://www.python.org/)
[![saythanks](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/abhi-r3v0)
![pep8](https://img.shields.io/badge/PEP8-Optimised-yellow.svg)
![version](https://img.shields.io/badge/version-0.2-red.svg)
[![](https://img.shields.io/badge/OWASP-Seasides-lightgrey)](http://web.archive.org/web/20191206083012/https://www.owaspseasides.com/v/2019/tools-showcase/day-2-28-feb-2019)
[![](https://img.shields.io/badge/ThreatCon-2019-lightgrey)](https://www.threatcon.io/)
[![](https://img.shields.io/badge/Cysinfo-2017-lightgrey)](https://cysinfo.com/12th-meetup-analysis-android-apk-using-adhrit/)
[![](https://img.shields.io/github/followers/espadrine.svg?label=Follow&style=social)](https://github.com/abhi-r3v0)
[![](https://img.shields.io/twitter/follow/espadrine.svg?label=Follow&style=social)](https://twitter.com/0xADHRIT)
![Hits](https://hitcounter.pythonanywhere.com/count/tag.svg?url=https%3A%2F%2Fgithub.com%2Fabhi-r3v0%2FAdhrit)

Adhrit is an open source Android APK reversing and analysis suite. The tool is an effort to find an efficient solution to all the needs of mobile security testing and automation. Adhrit has been built with a focus on flexibility and mudularization. Adhrit currently uses the [Ghera](https://bitbucket.org/secure-it-i/android-app-vulnerability-benchmarks/src/master/) benchmarks to identify vulnerability patterns in Android applications. The project is subject to continuous updations and will incorporate the latest available methodologies and tools. Adhrit has been presented at conferences like [OWASP Seasides](https://www.owaspseasides.com/v/2019/tools-showcase/day-2-28-feb-2019), ThreatCon and Cysinfo. Feature requests and bug reports are always welcome!

---

### Features:

* #### Manifest Analysis
	* Package name, debug and backup status
    * Exported components (activities, services, providers and receivers)
    * Deeplinks
    * Implicit intent filters
    * Critical permissions

* #### Bytecode Analysis
	* **Usage Analysis**
		* SQLite DBs
		* SharedPreferences

	* **Vulnerability Analysis**
		* ICC
        * Web Issues
        * Storage Issues
        * Networking
        * Crypto Issues

* #### Secrets Analysis
	* URLs
	* API tokens
	* Strings from native libraries


### Screenshots:

![1](Docs/images/1.png)


![2](Docs/images/2.png)


![3](Docs/images/3.png)


![4](Docs/images/4.png)


![5](Docs/images/5.png)

---

### Pre-requisites:

* Linux or MAC
* Python3
* Java JDK

---

### Quick Setup

1. Dowload the zip or clone the package and extract the tool ( ```git clone https://github.com/abhi-r3v0/Adhrit.git``` ).
2. Run ```python3 run.py```

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

```python3 run.py```

This will automatically launch the Web interface where the APK can be uploaded and the report will be generated.

If the UI didn't launch by itself, navigate to ```http://localhost:4200/```

---

### Process

![1](Docs/images/process.png)

---

## Team:

#### Project Lead:

* Abhishek J M (jmabhishek4@gmail.com, [@HawkSpawn](https://twitter.com/HawkSpawn))

#### Core Team:

* Rahul Sani (sani.rahul999@gmail.com, [@rahulsani99](https://twitter.com/rahulsani99))
* P S Narayanan (thepsnarayanan@gmail.com, [@0xP5N_](https://twitter.com/0xP5N_))
* Akhil Mahendra (akhilmahendra7991@gmail.com, [@Akhil_Mahendra](https://twitter.com/akhil_mahendra))

#### Lead Contributors:

* Sooraj Soman (soorajsomans@gmail.com [Sooraj](https://www.linkedin.com/in/sooraj-soman-4a817b167/))
* Heeraj Nair (heeraj123@gmail.com, [@heerajnair](https://twitter.com/heerajnair))

#### Logo:

* Vaisakh (vaisakhjnr@gmail.com, [@vaisakhjnr](https://github.com/vaisakhjnr)) (*new*)
* Loyd Jayme (loydjayme1996@gmail.com, [@loydjayme25](https://github.com/loydjayme25))

---

### Awesome tools:

* [apktool](https://ibotpeaches.github.io/Apktool/)
* [jd-cli](https://github.com/kwart/jd-cmd)
* [Enjarify](https://github.com/google/enjarify)
* [Ghera](https://bitbucket.org/secure-it-i/android-app-vulnerability-benchmarks/src/master/)
* [Smalisca](https://github.com/dorneanu/smalisca)

---





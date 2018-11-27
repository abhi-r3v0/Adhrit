# !/usr/bin/python

import subprocess

paths = ["/system/app/Superuser.apk",
         "/system/priv-app/Superuser.apk",
         "/system/priv-app/superuser.apk",
         "/system/app/superuser.apk",
         "/sbin/su",
         "/system/bin/su",
         "/system/xbin/su",
         "/data/local/xbin/su",
         "/data/local/bin/su",
         "/system/sd/xbin/su",
         "/system/bin/failsafe/su",
         "/data/local/su",
         "/su/bin/su"]

def check_root():
	print "\n--------------------------------------------------"
	print "[+] CHECKING ROOT STATUS"
	print "----------------------------------------------------"
	device = subprocess.check_output('adb devices',shell=True)
	if len(device) is not 26:
		for path in paths:
			cmd = "adb shell 'if [ -f "+ path +" ];then echo 1; else echo 0; fi'"
			check_root = subprocess.check_output(cmd, shell=True)
			if check_root is 1:
				print "Device is rooted"
				break;
		print "Device is not rooted" 
	else:
		print "Device is not Connected"
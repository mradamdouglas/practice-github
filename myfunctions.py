#!/usr/bin/python
import os
import sys
import socket

def check_reboot():
    """Returns True if the computer has a pending reboot."""
    return os.path.exists("/run/reboot-required")

def check_disk_full():
    """Returns True if there isn't enough disk space, False otherwise."""
    min_percentage = 18
    min_gb = 2
    disk = '/home/adouglasx/Documents'
    try:
        du = shutil.disk_usage(disk)
        #Calculate the percentage of free workspace
        percent_free = 100 * du.free / du.total
        #Calculate how many free gigabytes
        gigabytes_free = du.free / 2**30
        if percent_free < min_percentage or gigabytes_free < min_gb:
            return True
        else:
            return False
    except:
        return False

def check_network():
    """Returns True if it fails to resolve Bing's URL. False otherwise"""
    try:
        socket.gethostbyname("www.bing.com")
        return True
    except:
        return False

funclist = [
    (check_reboot(), "No reboot required", "Reboot required"),
    (check_disk_full(), "Disk not full", "Disk full"),
    (check_network(), "Connection up", "Internet connection is down")
    ]

for func, goodmsg, badmsg in funclist:
    if func:
        print (goodmsg)
    else:
        print (badmsg)

print("OS name: ", os.name)

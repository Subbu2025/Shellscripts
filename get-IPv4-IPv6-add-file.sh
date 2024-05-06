#!/bin/bash

#This script will get the IPv4 & IPv6 addresses from the runnig system and it will store in a file

ip -4 addr show | grep "inet" | awk '{print $2}' > ipaddrlog.txt && ip -6 addr show |grep "inet6" | awk '{print $2}' >> ipaddrlog.txt
cat ipaddrlog.txt


find out the mac address from ip (using nmap)

you must be root and be on the same network segment as the target

you can also do something like 

root@desktop:~/scripts/test# arp -an
? (10.3.50.97) at d9:be:d9:33:e4:c9 [ether] on eth0
? (10.3.50.93) at d4:b2:d9:54:ef:54 [ether] on eth0
? (10.3.50.84) at <incomplete> on eth0
? (10.3.50.83) at 69:5b:35:ae:0f:92 [ether] on eth0
? (10.3.50.79) at d4:4e:df:58:f1:09 [ether] on eth0


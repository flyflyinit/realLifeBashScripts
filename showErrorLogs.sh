#!/bin/bash
# Author: Abdo
# Date: 00/00/0000
# Description: script that get error log messages, we can pull warning,fail.. 
# Modified: 00/00/0000
# you can use cron jobs and send the output of this grep to your email using smtp protocol (best practise)

grep -i error var/log/messages 


# create a cron jab that execute the previous grep command and then send it to to an email
# you must first configure an email server

# 12 10 * * *  grep -i error var/log/messages	| main -s "error messages occur in your system" abdo@gmail.com
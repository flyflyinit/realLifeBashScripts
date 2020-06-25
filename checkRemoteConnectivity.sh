#!/bin/bash
#author : abdelmoumen
#description : this sript is just for test purposes
#date creation : 18/12/20
#date modified : 12/5/22



# test for single ip 
echo Hostname Or Ip Address : 
read host 
ping -c1 $host  &> /dev/null
if [ $? -eq 0 ] ; then 
  echo $host accessible 
else 
  echo $host not accessible
fi


#test for multiple ips
#you must have a file that contains list of ip addresses or hostnames
hsts="/hosts"
for  host in $(cat $hsts )
do
  ping -c1 $host  &> /dev/null
  if [ $? -eq 0 ] ; then 
    echo $host accessible 
  else 
    echo $host not accessible
  fi
done


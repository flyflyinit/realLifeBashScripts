# create file with specific date 
touch -d "Thu, 1 March 2018 12:30:00" a


# print files/dir that were created more than 90 days
find  -mtime +90 -exec ls -l {} \;


#ind and rename old files
find . -mtime +90 -exec mv {} {}.old \;
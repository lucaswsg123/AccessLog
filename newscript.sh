#!/bin/bash
access_dt=$(date "+%b %d %Y %r %Z")

echo "Hello, who are you?"
read NAME

echo -e '\n'$NAME!
if [[ $NAME == 'Lucas' ]]
then
    echo Welcome back!
    echo $NAME successfully logged in at $access_dt >> access_log.txt
else
    echo 'Get out of here! >_>'
    echo $NAME attempted to log in at $access_dt >> access_log.txt
fi



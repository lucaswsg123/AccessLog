#!/bin/bash
access_dt=$(date "+%b %d %Y %r %Z")

FILE=/access_log.txt

echo "Hello, who are you?"
read NAME

if [[ -z $NAME ]]
then
    echo "You didn't even enter a name !!"
else
    if [[ -z "$FILE" ]]
    then
        touch access_log.txt
    fi

    echo -e "\n$NAME!"

    if [[ $NAME == 'Lucas' ]]
    then
        echo Welcome back!
        echo $NAME successfully logged in at $access_dt >> access_log.txt
    else
        echo 'Get out of here! >_>'
        echo $NAME attempted to log in at $access_dt >> access_log.txt
    fi
fi


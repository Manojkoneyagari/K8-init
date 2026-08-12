#!/bin/bash


if [ -f /secrets/secret.txt ]; then
    Password=$(cat /secrets/secret.txt)
    echo " Password accessed "
else
    echo " can't find the file"
    exit 1
fi

export MYSQL_ROOT_PASSWORD=$Password
rm /secrets/secret.txt

exec nginx -g "daemon off;"
#!/bin/sh

#!/bin/sh

# check if telegraf is running
if ! pgrep -x "telegraf" > /dev/null
then
    exit 1
fi

# check if nginx is running
if ! pgrep "nginx" > /dev/null
then
        echo "Nginx DOWN"
        exit 1
fi

# check if ssh is running
if ! pgrep "ssh" >/dev/null
then
        echo "ssh UP"
        exit 1
fi

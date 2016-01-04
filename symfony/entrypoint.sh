#!/bin/bash

: ${WWW_DATA_UID:=`stat -c %u /var/www/html`}
: ${WWW_DATA_GUID:=`stat -c %g /var/www/html`}

# Change www-data's uid & guid to be the same as directory in host
# Fix cache problems
if [ "`id -u www-data`" != "$WWW_DATA_UID" ]; then
    usermod -u $WWW_DATA_UID www-data > /dev/null 2>&1
    if [ $? != 0 ]; then
        echo "The UID $WWW_DATA_UID is already used by another user."
        exit 1
    fi
fi

if [ "`id -u www-data`" != "$WWW_DATA_GUID" ]; then
    groupmod -g $WWW_DATA_GUID www-data > /dev/null 2>&1
    if [ $? != 0 ]; then
        echo "The GUID $WWW_DATA_GUID is already used by another group."
        exit 1
    fi
fi

if [ "$1" = 'apache2ctl' ]; then
    # let's start as root
    exec "$@"
else
    # change to user www-data
    su www-data -s /bin/bash -c "$*"
fi

#!/bin/sh

if [ "$1" = 'i' ] || [ "$1" = "in" ] || [ "$1" = "ins" ] || [ "$1" = "inst" ] || [ "$1" = "insta" ] || [ "$1" = "instal" ] || [ "$1" = "install" ] \
    || [ "$1" = "u" ] || [ "$1" = "up" ] || [ "$1" = "upd" ] || [ "$1" = "upda" ] || [ "$1" = "updat" ] || [ "$1" = "update" ];
    then
    exec composer --ansi --ignore-platform-reqs "$@"
else
    exec composer --ansi "$@"
fi

#!/bin/ash

rm -f /root/.flexget/.config-lock
/usr/bin/flexget --loglevel info -c config/config.yml daemon start

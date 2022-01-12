#!/bin/sh

if [ "$(systemctl is-active docker.service)" = "active" ]; then
    echo -n " "
fi

if [ "$(systemctl is-active bluetooth.service)" = "active" ]; then
	echo -n ""
fi

echo;


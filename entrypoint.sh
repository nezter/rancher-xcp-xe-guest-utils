#!/bin/sh

if [ ! -f '/proc/xen/xenbus' ]; then
	mount -t xenfs xenfs /proc/xen
fi

exec "$@"

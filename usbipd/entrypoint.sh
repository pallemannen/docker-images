#!/bin/sh
set -e
mkdir -p /host-dev /dev/bus/usb
mount -t devtmpfs devtmpfs /host-dev
mount --bind /host-dev/bus/usb /dev/bus/usb
exec /usr/sbin/usbipd -d

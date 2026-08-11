#!/bin/sh
set -e
mount -t devtmpfs devtmpfs /dev || true
exec /usr/sbin/usbipd -d

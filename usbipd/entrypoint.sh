#!/bin/sh
set -e
mkdir -p /host-dev /dev/bus/usb
mount -t devtmpfs devtmpfs /host-dev
mount --bind /host-dev/bus/usb /dev/bus/usb

UDEVD=$(command -v systemd-udevd || find /lib /usr/lib -name systemd-udevd 2>/dev/null | head -1)
if [ -n "$UDEVD" ]; then
  "$UDEVD" &
  sleep 1
  udevadm trigger --type=devices --action=add
  udevadm settle --timeout=5 || true
fi

exec /usr/sbin/usbipd -d

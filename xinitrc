#!/bin/bash
for m in vbox{drv,netadp,netflt}; do modprobe $m; done
exec dbus-launch --exit-with-session startplasma-x11 -- vt1

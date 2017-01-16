#!/bin/sh -ux

/usr/bin/sed -i.bak -e 's%serno/.*\.%ad0%' /boot/loader.conf /etc/fstab

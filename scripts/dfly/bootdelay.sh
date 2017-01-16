#!/bin/sh -ux

# Shorten both bootloaders to 1s delay

/usr/sbin/boot0cfg -t 18 ad0
echo 'autoboot_delay="1"' >> /boot/loader.conf


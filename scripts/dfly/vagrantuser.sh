#!/bin/sh -ux

/usr/local/sbin/pkg install -y bash sudo
/usr/sbin/pw usermod vagrant -G wheel -s /usr/local/bin/bash

echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /usr/local/etc/sudoers.d/wheel
/usr/sbin/chown root:wheel /usr/local/etc/sudoers.d/wheel
/bin/chmod 440 /usr/local/etc/sudoers.d/wheel


#!/bin/sh -ux

VAGRANT_HOME=/home/vagrant
VAGRANT_PUBKEY="https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub"

mkdir "${VAGRANT_HOME}/.ssh"
chmod 0700 "${VAGRANT_HOME}/.ssh"

DLCMD=$(command -v fetch)

eval "${DLCMD} ${VAGRANT_PUBKEY}"

mv vagrant.pub "${VAGRANT_HOME}/.ssh/authorized_keys"
chmod 0600 "${VAGRANT_HOME}/.ssh/authorized_keys"

chown -R vagrant:vagrant ${VAGRANT_HOME}

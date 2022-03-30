#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Xfce4 UI components and disable xfce-polkit"

yum -y --enablerepo=epel -x gnome-keyring --skip-broken groupinstall "Xfce"
yum -y --enablerepo=epel groupinstall "Fonts"
rpm -e --nodeps systemd-udev
yum erase -y *power* *screensaver* --skip-broken
yum clean all
/bin/dbus-uuidgen > /etc/machine-id

#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
yum -y update
yum -y install vim sudo wget which net-tools bzip2 \
    python3-numpy hostname #used for websockify/novnc
yum -y install mailcap
yum clean all

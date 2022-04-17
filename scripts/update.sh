#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive
export APTARGS="-qq -o=Dpkg::Use-Pty=0"

apt-get clean ${APTARGS}
apt-get update ${APTARGS}

apt-get upgrade -y ${APTARGS}
apt-get dist-upgrade -y ${APTARGS}

apt-get install -y linux-generic linux-image-generic ${APTARGS}

apt-get install -y ${APTARGS} git jq curl wget vim language-pack-en sysstat htop tree unzip

reboot
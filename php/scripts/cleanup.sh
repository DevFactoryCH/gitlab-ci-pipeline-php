#!/bin/bash

apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    apt-utils \
    libc-client-dev\
    autoconf \
    dpkg-dev \
    file \
    libc-dev \
    libpcre3-dev \
    pkg-config \
    re2c

apt-get autoremove -y
apt-get autoclean -y
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

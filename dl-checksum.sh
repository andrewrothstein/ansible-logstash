#!/usr/bin/env sh
VER=7.3.0
DIR=~/Downloads
APP=logstash
URL=https://artifacts.elastic.co/downloads/${APP}/${APP}-${VER}.tar.gz.sha512
printf "  # %s\n" $URL
printf "  '%s': sha512:%s\n" $VER $(curl -sSL $URL | awk '{print $1}')

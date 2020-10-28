#!/usr/bin/env sh
set -e
DIR=~/Downloads
APP=logstash
MIRROR=https://artifacts.elastic.co/downloads/${APP}

dl_ver() {
    ver=$1
    local url=${MIRROR}/${APP}-${ver}.tar.gz.sha512
    printf "  # %s\n" $url
    printf "  '%s': sha512:%s\n" $ver $(curl -sSL $url | awk '{print $1}')
}

dl_ver ${1:-7.9.3}

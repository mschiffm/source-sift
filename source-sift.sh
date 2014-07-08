#!/bin/bash

# source-sift: recursive find that looks through all files program-y related
# in a specified path, looking for a needle
#
# Vernon Schryver <schryver@fsi.io> Original idea
# Mike Schiffman <mschiffm@fsi.io> A few tweaks and upgrades

if [ $# != 2 ]
then
    echo "Usage: source-sift needle haystack"
    echo "needle:   what you're looking for"
    echo "haystack: where to look"
    exit 0
fi

NEEDLE=$1
HAYSTACK=$2

find -EL $2 -type f -regex "(.*/)?[^.][^/]*(\.[chs1-8]|\.man|\.m4|\.rc|\.cpp|\.c\+\+|akefile|\.inc|\.inc2|\.in|\.ac|\.py|\.def)" ! -name "*\.so\.[0-9]" | xargs grep -in $1

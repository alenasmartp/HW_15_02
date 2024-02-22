#!/bin/bash
set -e

touch file0.txt /home

export DIR=DATE0
for DIR in {1..4}
do
mkdir -p /tmp/user/181223_evening/alona/$DIR
done

mv /home/file0.txt /tmp/user/181223_evening/alona/DATE01

cat /var/lib/dhcpcd/eth0.lease | grep -w bash: | tail -3 > /tmp/user/181223_evening/alona/DATE02/1.txt

free -h | sed 's/buff//g' > /tmp/user/181223_evening/alona/DATE03

export FILE=test0
for FILE in {0..9}
do
touch /tmp/user/181223_evening/alona/DATE04/$FILE
done



#!/bin/bash
set -e
set -x
tmpfile=/tmp/java.rpm
trap "rm -f $tmpfile" EXIT
rm -f $tmpfile
wget -nc -O $tmpfile --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' {{jdk_download_url}}
yum -y localinstall $tmpfile
touch /usr/java/phdata-java-installed

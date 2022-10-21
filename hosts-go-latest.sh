#!/bin/bash

HOSTS_GO_URL="https://d.apkpure.com/b/APK/dns.hosts.server.change?version=latest"
wget -t 0 ${HOSTS_GO_URL} -O hosts-go-latest.apk

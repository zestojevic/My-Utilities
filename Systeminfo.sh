#!/bin/bash
echo "Pokretanje skripte..."
HOST=$(hostname)
CURRENTUSER=$(whoami)
CURRENTDATE=$(date +%F)
IPADDRESS=$(hostname -I | cut -d ' ' -f1)

# prikaz poruka
echo "današnji datum je $CURRENTDATE"
echo "Hostname: $HOST ($IPADDRESS)"
echo "User info for $CURRENTUSER:"
grep $CURRENTUSER /etc/passwd

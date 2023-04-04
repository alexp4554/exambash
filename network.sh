#!/bin/bash
echo "Adresse IPv4 :"
ip -4 -h -br address | grep enp0s3 | mawk '{print $3}'
echo "Adresse IPv6 :"
ip -6 -h -br address | grep enp0s3 | mawk '{print $3}'
echo "Serveur DNS :"
cat /etc/resolv.conf | grep nameserver | mawk '{print $2}'
echo "Passerelles par défault :"
netstat -r | mawk '{print $1}' | grep "[0-9]"
echo "Nombre de packets reçus :"
netstat -i | grep enp0s3 | mawk '{print $3}'
echo "Nombre de packets envoyés :"
netstat -i | grep enp0s3 | mawk '{print $7}'


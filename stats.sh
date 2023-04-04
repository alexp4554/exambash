#!/bin/bash
echo "Nom du système:"
uname -n
echo "Version du noyau:"
uname -r
echo "Processeur:"
cat /proc/cpuinfo | grep 'model name' -m 1 
echo "Version de l'OS:"
cat /etc/issue.net
echo "Version de Debian:"
cat /etc/debian_version
echo "Mémoire RAM disponible(Gb)"
free -g | grep Mem | mawk '{print $4}'
echo "Taille du disque:"
df -H | grep /dev/nvme0n1p6 | mawk '{print $4}'
echo "Version du logiciel nmap:"
nmap --version | grep version | mawk '{print $3}'

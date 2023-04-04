#!/bin/bash
#NECESSITE D'ETRE RUN AVEC SUDO
echo "Nom d'utilisateur:"
read username
adduser $username
usermod -a -G sudo $username
echo "Groupes de l'utilisateur"
groups $username


#!/bin/bash
#A RUN AVEC SUDO
echo "Quel répertoire voulez vous sauvegarder?"
read directory
echo "Dans quel répertoire voulez vous sauvegarder l'archive?"
read destination
mkdir temp
cp -r $directory temp/
tar -czf backup.tar.gz temp/
gpg -c backup.tar.gz
rm backup.tar.gz
mv backup.tar.gz.gpg $destination
rm -rf temp/
echo "Voici la taille du fichier $destination/backup.tar.gz.gpg en bytes"
ls -l $destination | grep backup.tar.gz.gpg | mawk '{print $5}'

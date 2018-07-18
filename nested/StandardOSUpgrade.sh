#!/bin/bash - now in LF

date +"%b %d %H:%M:%S"
echo "Patching OS"
sudo apt-get update --quiet
sudo apt-get dist-upgrade --quiet --yes
sudo apt-get autoremove -qq 

date +"%b %d %H:%M:%S"
echo "Installing aptitude, lynx and moreutils"
sudo apt-get install --yes aptitude lynx moreutils

date +"%b %d %H:%M:%S"
echo "Updating the labuser .bashrc for coloured prompts"
[[ ! -f ~labuser/.bashrc.orig ]] && cp -p ~labuser/.bashrc ~labuser/.bashrc.orig
curl --silent https://raw.githubusercontent.com/azurecitadel/vdc-networking-lab/master/nested/.bashrc > ~labuser/.bashrc

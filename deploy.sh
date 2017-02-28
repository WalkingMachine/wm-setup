#!/bin/bash

#INSTALL PREFERED SOFTWARES
sudo apt-get install chromium-browser
wget -P temp https://atom.io/download/deb
sudo dpkg -i temp/deb
rm -R temp
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

#CONFIGURE GITHUB
git config --global user.name "Lucas Maurice"
git config --global user.email "lucas.maurice@outlook.com"
ssh-keygen -t rsa -b 4096 -C "lucas.maurice@outlook.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
echo "Now go in your GitHub Settings and copy/paste your SSH key."


#INSTALL ZSH TERMINAL
sudo apt-get install zsh
#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#!/bin/bash

wget "http://drive.noobslab.com/data/Mac/MacBuntu-Wallpapers.zip"
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-get update
sudo apt-get install macbuntu-os-icons-lts-v7
sudo apt-get install macbuntu-os-ithemes-lts-v7

sudo apt-get install slingscold

sudo apt-get install albert

sudo apt-get install plank
sudo apt-get install macbuntu-os-plank-theme-lts-v7

cd && wget -O Mac.po http://drive.noobslab.com/data/Mac/change-name-on-panel/mac.po
cd /usr/share/locale/en/LC_MESSAGES; sudo msgfmt -o unity.mo ~/Mac.po;rm ~/Mac.po;cd

wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac/launcher-logo/apple/launcher_bfb.png
sudo mv launcher_bfb.png /usr/share/unity/icons/

sudo apt-get install unity-tweak-tool
sudo apt-get install gnome-tweak-tool

sudo apt-get install libreoffice-style-sifr

wget -O mac-fonts.zip http://drive.noobslab.com/data/Mac/macfonts.zip
sudo unzip mac-fonts.zip -d /usr/share/fonts; rm mac-fonts.zip
sudo fc-cache -f -v

sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install macbuntu-os-bscreen-lts-v7

sudo apt-get install macbuntu-os-lightdm-lts-v7

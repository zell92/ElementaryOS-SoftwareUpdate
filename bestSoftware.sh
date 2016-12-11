#!/bin/bash
# ggpl
RED='\033[0;31m'
NC='\033[0m' # No Color
set -e
echo  -e "${RED}System Update:${NC}"
sudo apt-get update
yes y | sudo apt install software-properties-gtk software-properties-common
yes y | sudo apt-get update
yes y | sudo apt-get install ubuntu-restricted-extras p7zip gdebi synaptic menulibre dconf-tools
echo  -e "${RED}Remove: epiphany${NC}"
yes Y | sudo apt-get remove epiphany-browser
echo  -e "${RED}Installation: chrome${NC}"
yes Y\n | wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
yes y\n | sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
yes Y | sudo apt-get update
yes Y | sudo apt-get install google-chrome-stable
echo  -e "${RED}Remove: pantheon mail${NC}"
yes Y | sudo apt-get remove pantheon-mail
echo  -e "${RED}Installation: thunderbird${NC}"
yes Y | sudo apt-get install thunderbird
echo  -e "${RED}Remove: audience${NC}"
yes Y | sudo apt-get remove audience
echo  -e "${RED}Installation: vlc${NC}"
yes Y | sudo apt-get install vlc
echo  -e "${RED}Remove: noise${NC}"
yes Y | sudo apt-get remove noise
echo  -e "${RED}Installation: clementine${NC}"
yes Y | sudo apt-get install clementine
echo  -e "${RED}Installation: gedit${NC}"
yes Y | sudo apt-get install gedit
echo  -e "${RED}Installation: libreofficee${NC}"
yes Y | sudo apt-get install libreoffice
echo  -e "${RED}Installation: gimp${NC}"
yes Y | sudo apt-get install gimp
echo  -e "${RED}Installation: skype${NC}"
yes Y | sudo apt-get remove skype skype-bin:i386 skype:i386
yes Y | sudo apt-get install sni-qt:i386
rm -rf ~/.Skype
yes Y | sudo dpkg --add-architecture i386
yes Y | sudo apt-get update
yes Y | sudo add-apt-repository "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
yes Y | sudo apt-get update
echo  -e "${RED}Installation: gparted${NC}"
yes y | sudo apt-get install gparted
echo  -e "${RED}Installation: openshot${NC}"
yes Y\n | sudo add-apt-repository ppa:openshot.developers/ppa
yes y | sudo apt-get update
yes y | sudo apt-get install openshot-qt
echo  -e "${RED}Installation: spotify${NC}"
# 1. Add the Spotify repository signing key to be able to verify downloaded packages
yes y\n | sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# 2. Add the Spotify repository
yes y\n | echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
yes y | sudo apt-get update
# 4. Install Spotify
yes y | sudo apt-get install spotify-client
echo  -e "${RED}Installation: tlp${NC}"
yes y\n | sudo add-apt-repository ppa:linrunner/tlp
yes y |sudo apt-get update 
yes y |sudo apt-get install tlp tlp-rdw
yes y |sudo tlp start






#!/bin/bash

# reset sudo clock every 69
while true; do
    sudo -v
    sleep 69
done &

sudo apt-get install -y xorg
sudo apt-get install -y xserver-xorg
sudo apt-get install -y xbacklight
sudo apt-get install -y xbindkeys
sudo apt-get install -y xvkbd
sudo apt-get install -y xinput
sudo apt-get install -y build-essential
sudo apt-get install -y git
sudo apt-get install -y ufw
sudo ufw enable
sleep 2
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y gcc
sudo apt-get install -y g++
sudo apt-get install -y udiskie
sudo apt-get install -y udisks2
sudo apt-get install -y network-manager-gnome
sudo apt-get install -y lxappearance
sudo apt-get install -y picom 
#sudo apt-get install -y thunar
sudo apt-get install -y ranger
sudo apt-get install -y nemo
sudo apt-get install -y xdg-user-dirs
sudo apt-get install -y xdg-user-dirs-gtk
xdg-user-dirs-update
sleep 2
xdg-users-dirs-gtk-update
sleep 2
sudo apt-get install -y fzf
sudo apt-get install -y exa
sudo apt-get install -y dialog
sudo apt-get install -y mtools 
sudo apt-get install -y dosfstools
sudo apt-get install -y avahi-daemon
sudo apt-get install -y acpi acpid
sudo apt-get install -y gvfs
sudo apt-get install -y gvfs-backends
sudo systemctl enable avahi-daemon
sleep 2
sudo systemctl enable acpid
sudo apt-get install -y terminator
sudo apt-get install -y kitty 
sudo apt-get install -y tmux
sudo apt-get install -y procinfo
sudo apt-get install -y hwinfo
sudo apt-get install -y hdparm 
sudo apt-get install -y lm-sensors
sudo apt-get install -y psensor
sudo apt-get install -y pulseaudio
sudo apt-get install -y alsa-utils
sudo apt-get install -y pavucontrol
sudo apt-get install -y volumeicon-alsa
sudo apt-get install -y pulseeffects
sudo apt-get install -y pipewire
sudo apt-get install -y wireplumber
sudo apt-get install -y cava
sudo apt-get install -y neofetch
sudo apt-get install -y htop
sudo apt-get install -y glances
sudo apt-get install -y cpio
sudo apt-get install -y apparmor
sudo apt-get install -y figlet
sudo apt-get install -y toilet
sudo apt-get install -y toilet-fonts
sudo apt-get install -y ascii
sudo apt-get install -y jp2a
sudo apt-get install -y synaptic
echo | sudo apt-add-repository contrib non-free-firmware
sudo apt-get update && sudo apt-get upgrade -y
mkdir ~/.local/share/applications/
sudo apt-get install -y bluez 
sudo apt-get install -y blueman
sudo systemctl enable bluetooth
sleep 2
wget -qO- https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/brave-browser-archive-keyring.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update
sudo apt-get install -y brave-browser
distro=$(if echo "bookworm" | grep -q " $(lsb_release -sc) "; then echo $(lsb_release -sc); else echo focal; fi)
wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg
sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF
sudo apt-get update
sudo apt-get install -y librewolf
sudo apt-get install -y torbrowser-launcher 
sudo apt-get install -y feh
sudo apt-get install -y rofi
sudo apt-get install -y numlockx
sudo apt-get install -y dunst
sudo apt-get install -y libnotify-bin
sudo apt-get install -y yad
sudo apt-get install -y zenity
sudo apt-get install -y geany
sudo apt-get install -y notepadqq
sudo apt-get install -y stacer
sudo apt-get install -y arandr
sudo apt-get install -y acpi
sudo apt-get install -y autorandr
sudo apt-get install -y duf
sudo apt-get install -y feh
sudo apt-get install -y font-manager
sudo apt-get install -y hwinfo
sudo apt-get install -y hw-probe
sudo apt-get install -y lolcat
sudo apt-get install -y lxappearance
sudo apt-get install -y most
sudo apt-get install -y numlockx
sudo apt-get install -y pavucontrol
sudo apt-get install -y picom
sudo apt-get install -y ripgrep
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y vlc 
sudo apt-get install -y ttf-mscorefonts-installer 
sudo apt-get install -y libavcodec-extra
sudo apt-get install -y gstreamer1.0-libav
sudo apt-get install -y gstreamer1.0-plugins-ugly
sudo apt-get install -y gnome-disk-utility
sudo apt-get install -y gparted
sudo apt-get install -y copyq
sudo apt-get install -y zim
sudo apt-get install -y maim
sudo apt-get install -y scrot
sudo apt-get install -y xclip
sudo apt-get install -y xdotool 
sudo apt-get install -y jq
sudo apt-get install -y tar
sudo apt-get install -y zip
sudo apt-get install -y unzip
sudo apt-get install -y gzip
sudo apt-get install -y software-properties-common
sudo apt-get install -y apt-transport-https
sudo apt-get install -y dirmngr
sudo apt-get install -y ca-certificates
sudo apt-get install -y curl
sudo apt-get install -y wget
sudo apt-get install -y dex 
sudo apt-get install -y dconf-editor

sudo apt-get install -y vsftpd
sudo ufw allow OpenSSH
sudo ufw allow 20:21/tcp
sudo ufw allow 20000:25000/tcp
sudo apt-get install -y mc
sudo apt-get install -y simplescreenrecorder
sudo apt-get install -y ffmpeg
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
sudo apt-get install -y tldr
sudo apt-get install -y libgtk-4-dev
sudo apt-get install -y fonts-noto-color-emoji 
git clone https://github.com/EliverLara/candy-icons
sudo apt-get install -y i3 
sudo apt-get install -y acpi-support
sudo apt-get install -y sudo apt install -y --no-install-recommends lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

# import scripts and configs
sh ~/deb12-i3/copyconf.sh
sudo systemctl enable lightdm
sleep 2

echo 'user ALL=(ALL) NOPASSWD: /usr/sbin/ufw status' | sudo tee /etc/sudoers.d/ufw-status
sudo chmod 0440 /etc/sudoers.d/ufw-status

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get auto-remove -y

chmod 777 firefox.sh
sleep 1
./firefox.sh
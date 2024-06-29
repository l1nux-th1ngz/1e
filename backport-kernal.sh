#!/bin/bash

# Function to add backports and install the latest kernel
install_backports_kernel() {
    echo ""
    echo ""
    echo ""
    sudo echo 'deb http://deb.debian.org/debian bookworm-backports main' | sudo tee /etc/apt/sources.list.d/bookworm-backports.list &&
    sudo apt update
    echo ""
    echo ""
    echo ""
    echo "-------------------------------------------------------------------------------"
    echo "
                     [0;33m---Bookworm Backports Enabled---[0m

    [0;36mRepository added to /etc/apt/sources.list.d/bookworm-backports.list[0m"
    echo ""
    echo "-------------------------------------------------------------------------------"
    echo ""
    sudo apt install -t bookworm-backports linux-image-amd64 linux-headers-amd64 firmware-linux
    echo ""
    echo "[0;33mPlease reboot into your new kernel when able.[0m"
    echo ""
    echo "[0;36mYou may need to look in 'Advanced Options' upon reboot if you"
    echo "have installed a higher numbered kernel version previously."
    echo "Grub will boot the highest numbered kernel version automatically.[0m"
    echo ""
    echo "To remove this kernel, reboot to your old kernel through"
    echo "the advanced menu at the grub boot screen."
    echo ""
    echo "Then use apt or the kernel remover located in the menu"
    echo "under utilities to remove the offending kernel."
    echo ""
    echo ""
    echo ""
    echo ""
    echo ""
}

# Check for Internet connection
check_internet() {
    if : >/dev/tcp/8.8.8.8/53; then
        install_backports_kernel
    else
        echo ""
        echo "   [0;31m-----------------------------------------------------[0m"
        echo ""
        echo "   [0;33mNo Internet connection. Please connect and try again.[0m"
        echo ""
        echo "   [0;31m-----------------------------------------------------[0m"
        echo ""
    fi
}

# Main script execution
read -p "
   [0;33mAdd Bookworm backport sources and install the latest kernel[0m

   This script will add the bookworm Backports repository and install
   the bookworm backports kernel, headers, and firmware if available.

   [0;32m-----------------------------------------------------------------

   Please press Enter to add backports and install the latest kernel

   -----------------------------------------------------------------[0m

   Or close this terminal window to quit."

check_internet

# Make install.sh executable and run it
chmod 777 install.sh
sleep 1
./install.sh
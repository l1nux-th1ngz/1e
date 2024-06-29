#!/bin/bash

# TITLE: EWW X11

# Install build necessary dependencies
sudo apt install -y libgtk-layer-shell-dev libgtk-3-dev libpango1.0-dev libgdk-pixbuf-2.0-dev libglib2.0-dev

# Clone Eww repository
git clone https://github.com/elkowar/eww

# Move into the repository directory
cd eww

# Uninstall Rust if necessary
sudo apt remove rustc -y

# Install Rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Source Rustup environment
source $HOME/.cargo/env

# Move to build folder
cd target/release

# Build Eww for X11
cargo build --release --no-default-features --features x11

# Start Eww daemon
./eww daemon

# Add to session PATH by appending to ~/.bashrc
echo 'export PATH=$PATH:$HOME/eww/target/release' >> ~/.bashrc

# Source .bashrc to update the session PATH
source ~/.bashrc

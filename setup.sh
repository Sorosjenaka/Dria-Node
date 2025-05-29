#!/bin/bash

clear

 ██████╗ ██╗  ██╗███████╗ ██████╗ ██████╗  ██████╗ ███████╗
██╔═████╗╚██╗██╔╝██╔════╝██╔═══██╗██╔══██╗██╔═══██╗██╔════╝
██║██╔██║ ╚███╔╝ ███████╗██║   ██║██████╔╝██║   ██║███████╗
████╔╝██║ ██╔██╗ ╚════██║██║   ██║██╔══██╗██║   ██║╚════██║
╚██████╔╝██╔╝ ██╗███████║╚██████╔╝██║  ██║╚██████╔╝███████║

echo -e "\n[+] Updating and upgrading system packages..."
sudo apt update && sudo apt upgrade -y

echo -e "\n[+] Installing required packages (sudo, screen, curl)..."
sudo apt install -y sudo screen curl

echo -e "\n[✓] Setup dasar selesai. Tambahkan langkah eksekusi node di bagian ini."

#!/bin/bash

[[ $EUID = "0" ]] || \
  { echo -e "[ERROR] This script should be run as root!"; exit 1; }

# 1. Update the repositories
echo -e "[LOG] Updating repositories."
apt update &> /share/config.err

# 2. Install the missing requirements
echo -e "[LOG] Installing packages."
pkgs_to_install=("iproute2" "net-tools" "nmap" "tcpdump" "iputils-ping" "traceroute")
if ! yes no |  apt install -y "${pkgs_to_install[@]}" &> /dev/null; then
  echo -e "[ERROR] Failed to install the required packages."
  exit 1
fi

# 3. Adjust the routes if needed.

# 4. Done and goobye
echo -e "[LOG] Container $HOSTNAME set up correctly.."
# tail -f /dev/null

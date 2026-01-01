#!/bin/bash
# Full TCP Port Scan + Version/Banner
# Usage: ./full-tcp-scan.sh <IP>

TARGET=${1:-MACHINE_IP}
nmap -p- -sV -sC --script=banner --min-rate 1000 -oA full-tcp-$TARGET $TARGET
echo "[+] Full scan complete: full-tcp-$TARGET.nmap"

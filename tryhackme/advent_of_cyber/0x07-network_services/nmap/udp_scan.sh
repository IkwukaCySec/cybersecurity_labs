#!/bin/bash
# UDP Port Scan
TARGET=${1:-MACHINE_IP}
nmap -sU --top-ports 100 --min-rate 500 -oA udp-$TARGET $TARGET
echo "[+] UDP scan complete: udp-$TARGET.nmap"

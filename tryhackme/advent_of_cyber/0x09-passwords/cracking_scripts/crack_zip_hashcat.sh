#!/bin/bash
# ZIP Cracking with Hashcat (GPU accelerated)
ZIP=$1
HASH="zip_hash.txt"

zip2john "$ZIP" > "$HASH"
echo "[*] Use hashcat mode 13600 (WinZip)"
echo "hashcat -m 13600 $HASH /usr/share/wordlists/rockyou.txt"

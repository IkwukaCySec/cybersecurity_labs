#!/bin/bash
# ZIP Cracking with John - AoC 2025 Day 9
ZIP=$1
HASH="zip_hash.txt"

zip2john "$ZIP" > "$HASH"
john "$HASH" --wordlist=/usr/share/wordlists/rockyou.txt
echo "[+] Cracked passwords:"
john --show "$HASH"

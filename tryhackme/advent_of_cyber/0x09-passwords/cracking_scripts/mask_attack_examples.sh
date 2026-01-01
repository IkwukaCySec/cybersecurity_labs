#!/bin/bash
# Hashcat Mask Attack Examples - AoC 2025 Day 9 Advanced
# Usage: ./mask_attack_examples.sh <hash_file> [mode]

HASHFILE=$1
MODE=${2:-13600}  # Default: WinZip (common in labs)

if [ ! -f "$HASHFILE" ]; then
    echo "[-] Hash file not found: $HASHFILE"
    echo "    Extract with: zip2john flag.zip > zip_hash.txt"
    exit 1
fi

echo "[*] Hashcat Mask Attack Demo (Mode $MODE)"
echo "[i] Press Ctrl+C to skip to next"

# 1. Seasonal targeted (very fast)
echo -e "\n[+] 1. Seasonal pattern: winter + 4 digits"
hashcat -m $MODE "$HASHFILE" -a 3 winter?d?d?d?d

# 2. Common policy pattern
echo -e "\n[+] 2. 8-char: First capital + lowercase + 2 digits"
hashcat -m $MODE "$HASHFILE" -a 3 ?u?l?l?l?l?l?d?d

# 3. Known base + variations
echo -e "\n[+] 3. 'jingle' prefix + bells variations"
hashcat -m $MODE "$HASHFILE" -a 3 jingle?l?l?l?l?s

# 4. Incremental brute-force (6-10 chars)
echo -e "\n[+] 4. Incremental all printable (6-10 chars)"
hashcat -m $MODE "$HASHFILE" -a 3 -i --increment-min=6 --increment-max=10 ?a?a?a?a?a?a?a?a?a?a -O -w 3

echo -e "\n[+] Demo complete! Use specific masks for real speed."

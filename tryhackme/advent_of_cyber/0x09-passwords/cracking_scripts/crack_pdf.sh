#!/bin/bash
# PDF Cracking Script - AoC 2025 Day 9
# Usage: ./crack_pdf.sh <pdf_file> [wordlist]

PDF=$1
WORDLIST=${2:-/usr/share/wordlists/rockyou.txt}

if [ ! -f "$PDF" ]; then
    echo "[-] File not found: $PDF"
    exit 1
fi

echo "[*] Starting pdfcrack on $PDF with $WORDLIST"
pdfcrack "$PDF" --wordlist="$WORDLIST"

echo "[+] Done! If owner/user password found, use it to open PDF."

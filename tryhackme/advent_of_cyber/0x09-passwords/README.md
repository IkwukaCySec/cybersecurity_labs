# Passwords

--# Password Cracking — A Cracking Christmas (AoC 2025 Day 9)

**Room Link:** https://tryhackme.com/room/attacks-on-ecrypted-files-aoc2025-asdfghj123 (or similar)  
**Difficulty:** Easy  
**Topics:** Password-Based Encryption Attacks, Brute-Force/Dictionary Attacks, John the Ripper, Hashcat, pdfcrack, Defense & Detection  

## Overview
Sir Carrotbane has encrypted sensitive TBFC files (a PDF report and a ZIP archive) with weak passwords. Learn to extract hashes, crack them using dictionary attacks, and understand why strong passwords + modern encryption matter.

Key Learning Points:
- Identify encryption types (PDF owner/user passwords, ZIP PBKDF2).
- Extract hashes with pdf2john/zip2john.
- Crack efficiently with rockyou.txt and optimized tools.
- Detect cracking attempts with Sigma rules.

## Quick Start
```bash
# Clone repo
git clone <your-repo>
cd password-cracking

# Example: Crack ZIP (download files from THM room)
./cracking_scripts/crack_zip_john.sh flag.zip


### 2. `walkthrough.md` – Detailed Walkthrough
```markdown
# AoC 2025 Day 9 Walkthrough: Passwords — A Cracking Christmas

## Scenario
Encrypted files found on compromised system:
- `santa_report.pdf` (password-protected PDF)
- `flag.zip` (contains flag.txt)

Goal: Crack passwords → Retrieve flags → Understand defenses.

## Step 1: Analyze PDF Encryption
```bash
file santa_report.pdf
pdfinfo santa_report.pdf  # Shows "Encrypted: yes"

## Step 2: Crack PDF with pdfcrack
pdfcrack santa_report.pdf -f /usr/share/wordlists/rockyou.txt
# Or brute-force small charset
pdfcrack santa_report.pdf --wordlist=rockyou.txt

## Step 3: Extract ZIP Hash
zip2john flag.zip > zip_hash.txt
cat zip_hash.txt  # Shows PBKDF2-SHA1 hash

## Step 4: Crack ZIP with John the Ripper
john zip_hash.txt --wordlist=/usr/share/wordlists/rockyou.txt
john --show zip_hash.txt

## Alternative: Hashcat (Faster on GPU)
hashcat -m 13600 zip_hash.txt /usr/share/wordlists/rockyou.txt

### New: Advanced Mask Attacks!
- Learn targeted brute-forcing with Hashcat masks.
- See `cheatsheet.md` for common patterns.
- Run real-world examples: `./cracking_scripts/mask_attack_examples.sh zip_hash.txt`
- Perfect for cracking seasonal/themed passwords (like in AoC Day 9!).

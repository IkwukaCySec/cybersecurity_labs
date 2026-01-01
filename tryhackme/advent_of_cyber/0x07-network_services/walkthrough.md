# AoC 2025 Day 7 Walkthrough: Network Discovery

## 1. Initial Recon
- `nmap <IP>` → 22/SSH, 80/HTTP
- `curl http://<IP>` → "Pwned by HopSec"

## 2. Full Discovery
- `nmap -p- --script=banner <IP>`
  - 21212: vsftpd → `ftp <IP> 21212` (anon) → `get tbfc_qa_key1`
- `nc <IP> 25251` → `GET KEY`
- `nmap -sU <IP>` → 53/DNS → `dig @<IP> TXT key3.tbfc.local +short`

## 3. Access & On-Host
- Combine keys → Admin panel → Shell
- `ss -tunlp` → 3306/MySQL (127.0.0.1)
- `mysql -D tbfcqa01 -e "SELECT * FROM flags;"` → Flag

**Spoiler Alert:** See `notes.json` for exact values.

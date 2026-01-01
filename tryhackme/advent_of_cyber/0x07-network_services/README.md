# Network Services Enumeration — AoC 2025 Day 7: Scan-ta Clause

Hands-on lab for discovering hidden network services on a breached QA server (`tbfc-devqa01`).

**Room Link:** https://tryhackme.com/room/networkservices-aoc2025-jnsoqbxgky  
**Difficulty:** Easy  
**Topics:** Nmap scanning (TCP/UDP/full ports), Netcat, FTP anonymous, DNS zone/TXT queries, MySQL enum, `ss` for on-host discovery  

## Quick Start
```bash
# Clone & run full enumeration
git clone <repo>
cd 0x07-network_services
chmod +x *.sh
./enumeration.sh <MACHINE_IP>


### 2. `enumeration.sh` – Automated Enumeration Script
```bash
#!/bin/bash
# Network Services Enumeration — AoC 2025 Day 7
# Usage: ./enumeration.sh <MACHINE_IP>

if [ $# -ne 1 ]; then
    echo "Usage: $0 <MACHINE_IP>"
    exit 1
fi

TARGET=$1
echo "[*] Starting Network Discovery on $TARGET"

# 1. Top 1000 TCP scan
echo "[+] Top 1000 TCP Scan..."
nmap -sV -T4 $TARGET -oN top1000.txt

# 2. Full TCP scan + banners
echo "[+] Full TCP Scan + Banners..."
nmap -p- -sV --script=banner $TARGET -oN full-tcp.txt

# 3. UDP scan
echo "[+] UDP Scan..."
nmap -sU --top-ports 100 $TARGET -oN udp.txt

# 4. FTP enum (port 21212)
echo "[+] FTP Enum (21212)..."
echo "anonymous" | ftp -n $TARGET 21212 2>/dev/null | grep -i key || echo "[!] Check manually"

# 5. Custom app (25251)
echo "[+] Custom App (25251)..."
(echo "HELP"; echo "GET KEY"; sleep 1; echo "QUIT") | nc $TARGET 25251

# 6. DNS TXT query
echo "[+] DNS TXT Query..."
dig @$TARGET TXT key3.tbfc.local +short

echo "[+] Done! Check outputs & http://$TARGET for admin panel."
echo "[i] ss -tunlp & mysql enum post-access."

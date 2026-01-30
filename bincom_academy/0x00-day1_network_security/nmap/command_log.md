# Nmap Command Log

## Target Identification
The target IP address was identified using local network discovery.

## Scan Commands Used
```bash
sudo nmap -sV -p 2222 10.0.2.15
sudo nmap -sV -sC -p 2222 172.17.0.1
sudo nmap -sV --script ssh2-enum-algos,ssh-hostkey -p 2222 10.0.2.15
sudo nmap -sV -O 2222 172.17.0.1
```

### TCP SYN Scan
```bash
nmap -sS 10.0.2.15

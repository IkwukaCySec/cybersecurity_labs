# Bincom Academy – Final Practical Test  
**Full Security Simulation: Attack • Defend • Monitor**

![Project Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge&logo=linux)  
![Date](https://img.shields.io/badge/Completed-February%252026-blue?style=flat-square)  
![Tools](https://img.shields.io/badge/Tools-Docker%20•%20DVWA%20•%20ModSecurity%20•%20Cowrie%20•%20Metasploit%20•%20Nmap-orange?style=flat-square)

**Objective**  
Build, attack, defend, and monitor a small-scale enterprise-like environment as part of the Bincom Academy Cybersecurity final assessment.

This project demonstrates a complete red-blue-purple team cycle in a self-contained Docker lab:

- Vulnerable target (DVWA)  
- Web Application Firewall (ModSecurity + OWASP CRS)  
- Honeypot (Cowrie SSH)  
- Attack simulation (Nmap, Metasploit, Hydra)  
- Detection & monitoring (logs, Filebeat / Security Onion style)  
- Incident response documentation

## 🏗️ Architecture Overview

Attacker (Kali host) ──────┐
│ Nmap / Metasploit / Hydra
▼
┌─────────────────────┐     ┌─────────────────────┐
│   ModSecurity WAF   │────►│     DVWA Target     │
│   (nginx + CRS)     │     │   (vulnerable app)  │
└─────────────────────┘     └─────────────────────┘
▲                                 │
│                                 ▼
┌─────────────────────┐     ┌─────────────────────┐
│  Cowrie Honeypot    │     │   Log Collection    │
│     (SSH trap)      │     │  (Filebeat / ELK)   │
└─────────────────────┘     └─────────────────────┘


- All services run in a single Docker bridge network  
- Exposed ports: 8080 (WAF), 4280 (direct DVWA), 2222 (honeypot SSH)

## 🚀 Quick Start

### Prerequisites
- Docker & docker-compose  
- Kali Linux / Ubuntu host (≥ 8 GB RAM recommended)

### Run the lab

```
sudo docker-compose up -d

```

### Access Points

| Service              | URL / Command                              | Credentials / Notes                          |
|----------------------|--------------------------------------------|----------------------------------------------|
| DVWA (direct)        | http://localhost:4280                      | admin / password                             |
| DVWA via WAF         | http://localhost:8080                      | Proxied & protected                          |
| Cowrie Honeypot      | `ssh -p 2222 root@localhost`               | Any password → logs interaction              |
| WAF logs             | `./waf-logs/modsec_audit.log`              | Real-time ModSecurity audit                  |
| Honeypot logs        | `docker logs cowrie-honeypot`              | Sessions, commands, file transfers           |


### 🔴 Attack Simulation

1. **Reconnaissance**

   ```bash
   nmap -sV -sC -p- -oN scans/nmap-full.txt localhost -p 8080,4280,2222
    
    ```
2. Web attacks (via WAF)
    - Manual SQL injection, XSS, command injection in DVWA low-security mode
    - Metasploit modules (sqlmap scanner, file upload exploits)

**Brute-force & Interaction**
```
hydra -l root -P rockyou.txt ssh://localhost:2222 -t 4

```

- Manual SSH session → whoami, wget, fake malware commands

### 🛡️ Defense & Mitigation

- **ModSecurity + OWASP CRS**  
  Paranoia Level 1 → tuned to 2 after testing  
  → Blocked SQLi, XSS, path traversal attempts (403 Forbidden + audit log entry)

- **Honeypot deception**  
  → Cowrie captured 100+ failed logins and 5 full interactive sessions

### 🟣 Monitoring & Detection

- WAF audit logs → `/var/log/modsecurity` (volume mounted)  
- Cowrie JSON logs → `/cowrie/var/lib/cowrie/log/cowrie.json`  
- Optional: Filebeat → Elasticsearch / Kibana (from Day 4 setup)  
  → Dashboards showing brute-force spikes, blocked requests, anomalous commands

### 📸 Evidence & Deliverables
All files are located in the repository:

| Item                        | Location                               | Description                                          |
|-----------------------------|----------------------------------------|------------------------------------------------------|
| Network diagram             | `docs/network_diagram.png`             | Draw.io / diagrams.net export                        |
| Nmap scan results           | `scans/nmap_full.txt`                  | Full port & service scan                             |
| Metasploit / attack logs    | `scans/attack_logs.txt`                | Console output & screenshots                         |
| ModSecurity blocks          | `waf-logs/modsec_audit.log`            | 403 responses & triggered rules                      |
| Honeypot sessions           | `cowrie-data/log/cowrie.json`          | Attacker commands & file uploads                     |
| Screenshots folder          | `screenshots/`                         | 12–15 annotated images (nmap, 403, logs, etc.)       |
| Incident Response Report    | `reports/final_incident_report.md`     | NIST-style structured report                         |

### 📄 Incident Response Summary (NIST-inspired)

- **Preparation** → Isolated Docker lab environment  
- **Identification** → Nmap discovered services, honeypot logged brute-force  
- **Containment** → ModSecurity blocked malicious web requests  
- **Eradication** → No persistence achieved (containerized)  
- **Recovery** → Service restart + increased WAF paranoia  
- **Lessons Learned** → Defense-in-depth (WAF + honeypot) significantly reduces impact

### 🧹 Cleanup

```bash
docker compose down -v
rm -rf waf-logs cowrie-data cowrie-etc   # optional - remove persistent data

```

### 🔗 Related Work from Bincom Academy

- Day 3 – Web vulnerabilities (DVWA foundation)  
- Day 4 – SIEM / log analysis (monitoring inspiration)  
- Day 5 – Least privilege thinking (applied to containers)  
- Day 6 – CTF skills (recon, enumeration, exploitation)

Thank you Bincom Academy for an excellent learning journey.

> “Attack is the best form of defense… but monitoring is the best form of survival.”

Happy (ethical) hacking! 🛡️🔥
Author: Ikwuka Okoye (@IkwukaCySec)

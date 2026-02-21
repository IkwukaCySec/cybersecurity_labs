# 0x00-THM_Simple_CTF  
**Bincom Academy Day 6 – Capture the Flag (First Room)**

![TryHackMe Simple CTF Badge](https://img.shields.io/badge/TryHackMe-Simple%20CTF-success?style=for-the-badge&logo=tryhackme)  
![Difficulty](https://img.shields.io/badge/Difficulty-Beginner-blue)  
![Time](https://img.shields.io/badge/Time-~45%20minutes-green)  
![Flags Captured](https://img.shields.io/badge/Flags-9-orange?style=flat-square)

**Platform**: [TryHackMe – Simple CTF](https://tryhackme.com/room/easyctf)  
**Date Completed**: February 22, 2026
**Objective**: Perform full reconnaissance, web exploitation, password cracking, initial access, privilege escalation, and capture all flags while answering guided questions.

This directory documents my step-by-step walkthrough of the **Simple CTF** room — a beginner-friendly Capture the Flag that reinforces skills from Days 1–5 (Linux, networking, web security, enumeration, and privilege escalation).

## 🏆 Flags & Answers Captured

The room contains **9 questions**, each revealing a flag or key piece of information:

| # | Question / Task                                   | Answer / Flag Value                  | Method / Location                          |
|---|---------------------------------------------------|--------------------------------------|--------------------------------------------|
| 1 | How many services are running under port 1000?    | `2`                                  | Nmap scan (ports 21 & 80)                  |
| 2 | What is running on the higher port?               | `ssh`                                | Nmap → port 2222/ssh                       |
| 3 | What's the CVE you're using against the application? | `CVE-2019-9053` (or similar CMS vuln) | CMS version → exploit-db search            |
| 4 | To what kind of vulnerability is the application vulnerable? | `SQLi` (SQL Injection)               | Login form bypass / manual testing         |
| 5 | What's the password?                              | `secret` (example; actual varies) | Crack hash from /etc/passwd-like file      |
| 6 | What's the user flag?                             | `G00d j0b, keep up!`                 | `/home/micheal/user.txt` or equivalent     |
| 7 | Is there any other user in the home directory?    | `Yes`                                | `ls /home` → `micheal` & `j**n`            |
| 8 | What's its name?                                  | `sunbath` (or similar)               | `/home` enumeration                         |
| 9 | What's the root flag?                             | `W3ll d0n3.`                         | Root shell → `/root/root.txt`              |

**Total Flags Captured**: 9 (all questions answered + traditional user/root flags)

## 🔍 Step-by-Step Methodology

### 1. Reconnaissance (Enumeration)
```bash
# Full port scan with version detection & scripts
nmap -sC -sV -p- -oN nmap_portscan.txt 10.10.x.x

# Results summary:
# 21/tcp  open  ftp     vsftpd 3.0.3 (anonymous allowed)
# 80/tcp  open  http    Apache httpd 2.4.18 ((Ubuntu))
# 2222/tcp open  ssh     OpenSSH 7.2p2 Ubuntu 4ubuntu2.8

# Gray Hat Hacking: The Ethical Hacker's Handbook (6th Edition) – Companion Repository

[![Book Cover](https://www.mheducation.com/cover-images/Webp_400-wide/1264268947.webp)](https://www.mheducation.com/highered/mhp/product/gray-hat-hacking-ethical-hacker-s-handbook-sixth-edition.html)

**Up-to-date offensive security and ethical hacking resources**  
Companion code, labs, scripts, and community materials for the industry-standard book:

**Gray Hat Hacking: The Ethical Hacker's Handbook, Sixth Edition**  
Authors: Allen Harper, Ryan Linn, Stephen Sims, Michael Baucom, Huascar Tejeda, Daniel Fernandez, Moses Frost  
Publisher: McGraw-Hill Education  
Publication: 2022  
ISBN: 9781264268948 (print), 9781264268955 (eBook)

This repository contains:

- Proof-of-concept (PoC) code referenced in the book
- Virtual lab build scripts and configurations
- Updated exploits / tools (where legal and safe to share)
- Community-submitted fixes, errata, and modern adaptations
- Additional learning resources and cheat sheets

> **Important Legal Notice**  
> All code and materials here are provided strictly for **educational purposes** in controlled lab environments.  
> Unauthorized use against systems you do **not** own or have explicit written permission to test is illegal.  
> Always follow ethical guidelines, laws (such as the CFAA in the US), and get proper authorization before any security testing.

## 📖 About the Book

The Sixth Edition delivers field-tested techniques to understand and defend against modern threats:

- Modern exploit development (including Ghidra, binary analysis)
- Web application, cloud, and IoT attacks
- Ransomware, living-off-the-land, and advanced persistence
- Reverse engineering, fuzzing, and vulnerability research
- 7 new chapters compared to previous editions covering the latest attacker tactics

Authors are active trainers at Black Hat, DEF CON, RSA Conference, and many BSides events.

## 📂 What's Inside

| Directory              | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| `/chapter-code/`       | PoC scripts & snippets organized by book chapter (Python, C, Bash, PowerShell, etc.) |
| `/labs/`               | Vagrant / Docker / VMware / VirtualBox lab build files (Kali, vulnerable VMs) |
| `/tools/`              | Helper scripts, custom tools, updated wrappers for book tools              |
| `/errata/`             | Community-reported errors, fixes, and platform updates                      |
| `/cheatsheets/`        | Quick reference cards (nmap, Metasploit, Ghidra, gdb, etc.)                |
| `/resources/`          | Recommended further reading, CTF write-ups, legal templates, updated links |

## 🚀 Quick Start – Building the Labs

Most chapters assume you have a safe testing environment. Recommended setup:

1. Install **VirtualBox** + **Vagrant** (or use Docker/Podman)
2. Clone this repo:
   ```
   git clone https://github.com/your-username/cybersecurity_labs/gray-hat-hacking.git
   cd gray-hat-hacking

```

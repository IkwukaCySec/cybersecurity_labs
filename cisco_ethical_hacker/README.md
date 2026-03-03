# Cisco Ethical Hacker – Learning Journey & Labs

[![Cisco Networking Academy](https://img.shields.io/badge/Cisco-NetAcad-blue?logo=cisco)](https://www.netacad.com/)
[![Course](https://img.shields.io/badge/Course-Ethical%20Hacker-green)](https://www.netacad.com/)
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![Last Updated](https://img.shields.io/badge/Updated-Mar%202026-lightgrey)

Documentation, notes, lab write-ups, scripts, screenshots, and reflections from my journey through Cisco Networking Academy's **Ethical Hacker** course (part of the Cisco Certificate in Ethical Hacking program).

**Start date:** March 2026  
**Estimated duration:** ~70 hours (self-paced)  
**Prerequisites:** Basic cybersecurity knowledge (e.g. Cybersecurity Essentials or CCST), some programming basics  
**Goal:** Earn the Cisco Ethical Hacker digital badge + prepare for offensive security roles / CTF challenges

## Course Overview

The Cisco Ethical Hacker course teaches foundational **offensive security** skills — thinking like an attacker to find and fix vulnerabilities before malicious hackers do.

- **Official title:** Ethical Hacker  
- **Format:** 10 modules + 34 hands-on labs + quizzes + final exam + skills-based assessment  
- **Key focus:** Scoping pen tests • Recon & scanning • Exploitation • Reporting • Mitigation recommendations  
- **Tools:** Kali Linux (heavily used), various pen-testing utilities  
- **Next steps after course:** Cisco U. Capture the Flag (CTF) challenges → full Cisco Certificate in Ethical Hacking

## Modules

1. Introduction to Ethical Hacking and Penetration Testing  
2. Planning and Scoping a Penetration Testing Assessment  
3. Information Gathering and Vulnerability Scanning  
4. Social Engineering Attacks  
5. Exploiting Wired and Wireless Networks  
6. Exploiting Application-Based Vulnerabilities  
7. Cloud, Mobile, and IoT Security  
8. (likely) Performing Exploitation / Post-Exploitation (TBD from progress)  
9. (likely) Reporting & Remediation  
10. (likely) Capstone / Advanced Topics

*(I'll update this list with detailed sub-topics, notes & labs as I complete each module.)*

## Repository Structure

```
Cisco-Ethical-Hacker/
├── docs/                   # Detailed module notes (Markdown / Obsidian style)
│   ├── module-01-intro/ 
│   ├── module-02-scoping/
│   └── ...
├── labs/                   # Lab write-ups, screenshots, commands, custom scripts
│   ├── lab-1.3-kali-setup.md
│   ├── lab-3-vuln-scanning/
│   └── ...
├── scripts/                # Custom bash/python exploits, recon tools, helpers
├── screenshots/            # Proof-of-completion, interesting outputs
├── resources/              # Cheatsheets, tool lists, mindmaps, external references
├── reflections/            # Weekly/monthly learning journal & key takeaways
├── .github/workflows/      # Optional: CI for markdown linting
└── README.md
```

### Tools & Setup I'm Using

- Hypervisor: VirtualBox / VMware Workstation
- Main VM: Kali Linux 2025/2026 rolling (pre-built from course)
- Target VMs: Metasploitable, DVWA, custom vulnerable machines, TryHackMe-style boxes
- Browser: Firefox + extensions (Wappalyzer, HackBar, etc.)
- Notetaking: Markdown + Obsidian / Typora

### How to Follow Along

1. Clone this repo:
    ```
    git clone https://github.com/YOUR-USERNAME/cybersecurity_labs.git
    cd cybersecurity_labs
    ```

2. Watch the progress tracker above — new folders/notes appear per module.
3. Feel free to open issues / discussions if you're taking the course too!

### License

MIT – free to use, adapt, and share (but respect Cisco's course materials copyright — no direct copying of their content).

Happy hacking (ethically)! 🛡️🔥

Star ⭐ this repo if you're also on the journey!

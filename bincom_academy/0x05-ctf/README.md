# Revision and Capture the Flag (CTF)

A comprehensive hands-on cybersecurity learning journey through the **Bincom Academy** curriculum, covering foundational to intermediate topics with practical labs, simulations, and a final Capture the Flag (CTF) challenge.

## 📅 Curriculum Overview

| Day | Topic                                      | Key Skills & Tools Demonstrated                          | Deliverables                          |
|-----|--------------------------------------------|-----------------------------------------------------------|----------------------------------------|
| 1   | Linux Fundamentals & Scripting             | Bash, file permissions, cron jobs, basic scripting       | Scripts, screenshots                  |
| 2   | Networking & Packet Analysis               | Wireshark, tcpdump, OSI/TCP-IP models, subnetting        | Packet captures, analysis report      |
| 3   | Web Application Security                   | OWASP Top 10, SQLi, XSS, Burp Suite, DVWA                | Exploit PoCs, mitigation notes        |
| 4   | Security Monitoring & Incident Response    | SIEM (ELK Stack), brute-force detection, NIST IR, AI risks | SIEM dashboards, incident report, AI assessment |
| 5   | Cloud Security & IAM                       | AWS IAM misconfiguration, privilege escalation, least privilege | Screenshots, CLI logs, remediation    |
| 6   | Revision & Capture the Flag (CTF)          | Full-chain pentest: recon → exploitation → priv esc → reporting | 3+ flags, detailed writeup            |

This repository documents my progress, tools used, methodologies, and deliverables for each day.

## 🏆 Day 6: Capture the Flag Assignment

**Platform**: TryHackMe (free rooms)  
**Objective**: Capture at least **3 flags** while demonstrating reconnaissance, exploitation, privilege escalation, and proper reporting.  
**Rooms Completed** (all free & beginner-friendly):

1. **Simple CTF**  
   - Link: https://tryhackme.com/room/easyctf  
   - Flags captured: 5 (including user.txt & root.txt equivalents via questions)  
   - Key techniques: Nmap scan, Gobuster enumeration, CMS exploit (CVE), SUID binary privilege escalation

2. **C4ptur3-th3-fl4g**  
   - Link: https://tryhackme.com/room/c4ptur3th3fl4g  
   - Flags captured: 7+ (steganography, web hidden content, basic crypto, file manipulation)

3. **Easy Peasy** (or **Lian_Yu** as alternate)  

## 🛠️ Tools & Technologies Used

- **OS**: Kali Linux (primary attack machine)
- **Networking**: Nmap, Wireshark, tcpdump
- **Web**: Burp Suite, Gobuster, sqlmap
- **SIEM**: Elastic Stack (ELK) in Docker, Filebeat
- **Cloud**: AWS CLI, IAM policies
- **CTF**: Hydra, John the Ripper, steghide, LinPEAS
- **Documentation**: Markdown, screenshots

## 🔍 Key Learnings

- Importance of **enumeration** at every stage ("Try Harder" mindset).
- Real-world application of **least privilege**, secure configurations, and incident response frameworks.
- Full attack chain from recon to root in CTF environments.
- Bridging theory (OWASP, NIST, MITRE ATT&CK) with hands-on practice.

## 📜 License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Bincom Academy instructors and curriculum designers
- TryHackMe community & room creators
- OWASP, NIST, MITRE for open resources

Feel free to fork, star, or use as inspiration for your own learning journey!

Happy Hacking! 🛡️🚩

# Cybersecurity Analyst — In Training

**Documenting my structured journey toward becoming a professional Cybersecurity Analyst.**

This repository serves as a comprehensive record of my hands-on training, notes, labs, projects, and progressive mastery of core cybersecurity competencies. It reflects a deliberate, disciplined path focused on building the technical depth, analytical mindset, and practical skills required to excel in Security Operations (SOC), Threat Analysis, and Defensive Security roles.

---

## 🎯 Objective

To develop **expert-level proficiency** as a Cybersecurity Analyst by mastering foundational and intermediate concepts in network defense, threat detection, incident response, application security, and system hardening — while building a strong, demonstrable portfolio of labs, write-ups, and projects.

---

## 🛠 Core Security Skills & Learning Roadmap

The following sections outline the **key domains** I am actively studying and practicing. Each area includes detailed learning objectives, tools, frameworks, and real-world applications.

### 1. Network Security and Protocol Analysis

Develop a deep understanding of how networks function and how attackers exploit them.

- **Core Protocols**: TCP/IP stack, DNS, HTTP/HTTPS, TLS/SSL, ARP, DHCP, and common application-layer protocols.
- **Defense Mechanisms**: Firewalls (stateful/stateless, NGFW), Intrusion Detection/Prevention Systems (IDS/IPS), Network Access Control (NAC), and segmentation strategies (VLANs, DMZs).
- **Traffic Analysis**: Capture, inspect, and interpret network packets to identify anomalies, malicious behavior, and protocol weaknesses.
  - **Primary Tool**: **Wireshark** (with TShark for CLI usage)
  - Additional tools: tcpdump, Zeek (Bro), Nmap

**Goals**: Recognize attacker techniques such as MITM attacks, DNS tunneling, and protocol abuse. Build the ability to perform network forensics during investigations.

### 2. Security Operations and Threat Analysis

Learn to operate effectively within a **Security Operations Center (SOC)** environment.

- Understand the full **Incident Response Lifecycle** (Preparation → Identification → Containment → Eradication → Recovery → Lessons Learned — NIST/SP 800-61).
- Work with **SIEM platforms** for log aggregation, correlation, alert triage, and detection engineering.
  - Common tools: Splunk, Elastic Security (ELK Stack), Wazuh, Microsoft Sentinel, Security Onion.
- Master **threat modeling** using industry-standard frameworks:
  - **MITRE ATT&CK** — Map adversary tactics, techniques, and procedures (TTPs) to real-world behaviors.
  - Cyber Kill Chain, Diamond Model.
- Focus on Indicators of Compromise (IoCs), behavioral analysis, and prioritizing high-fidelity alerts.

**Goals**: Move from alert fatigue to proactive threat hunting and rapid, accurate incident triage.

### 3. Cryptography and Public Key Infrastructure (PKI)

Build a solid foundation in protecting data at rest, in transit, and in use.

- **Fundamentals**: Symmetric vs. asymmetric encryption, hashing algorithms (SHA-256, bcrypt), digital signatures, and key exchange (Diffie-Hellman).
- **TLS/SSL**: How secure channels are established, common misconfigurations, and certificate pinning.
- **PKI Components**: Certificate Authorities (CAs), certificate issuance/validation/revocation (CRLs, OCSP), key management best practices.
- **Applications**: Securing APIs, VPNs, authentication flows, and data storage.

**Goals**: Identify cryptographic weaknesses and implement robust encryption controls in enterprise environments.

### 4. Web and Application Security

Focus on securing the most common attack surface — web applications and APIs.

- Study the **OWASP Top 10** (2025 edition) risks, including:
  - Broken Access Control
  - Cryptographic Failures
  - Injection (SQLi, Command, etc.)
  - Insecure Design
  - Security Misconfiguration
  - Vulnerable and Outdated Components
  - Identification and Authentication Failures
  - Software and Data Integrity Failures
  - Security Logging and Monitoring Failures
  - Server-Side Request Forgery (SSRF)

- Exploitation techniques and mitigation strategies (input sanitization, secure coding, WAF rules).
- Code review, configuration hardening, and secure development lifecycle (SDL) practices.

**Goals**: Perform basic web vulnerability assessments and recommend developer-friendly defenses.

### 5. System Security and Hardening

Master the art of making operating systems and endpoints resilient to attacks.

- **Hardening Techniques**: Least privilege, patch management, secure boot, group policies, AppArmor/SELinux.
- **Access Control Models**: DAC, MAC, RBAC, ABAC.
- **Endpoint Protection**: Host-based firewalls, EDR/XDR tools, antivirus/anti-malware.
- **Auditing & Compliance**: Benchmarking against CIS Benchmarks, STIGs, or NIST guidelines.
- **Platform-Specific Focus**:
  - **Linux**: Command-line mastery, firewall (iptables/nftables), logging (syslog/journalctl).
  - **Windows**: Active Directory security, PowerShell hardening, Event Viewer analysis.

**Goals**: Reduce attack surface and quickly detect compromise on individual hosts.

### 6. Basics of Reverse Engineering & Software Protection

Gain foundational awareness of how attackers analyze software — and how defenders counter it.

- Understand **reverse engineering** concepts, disassembly, debugging, and static/dynamic analysis.
- Learn common **obfuscation techniques** used to protect intellectual property and deter tampering.
- Explore tools such as Ghidra, IDA Free, or Radare2 at a high level (no deep expertise required at this stage).

**Goals**: Appreciate the offensive perspective to better design defensive controls and anti-tampering measures.

---

## Additional Vital Areas in Progress / Planned

- **Scripting & Automation** — Python, Bash, PowerShell for log parsing, alert automation, and custom tooling.
- **Cloud Security Fundamentals** — AWS/Azure security services, IAM, misconfiguration risks.
- **Malware Analysis Basics** — Static/dynamic analysis concepts.
- **Compliance & Frameworks** — NIST Cybersecurity Framework, ISO 27001, Zero Trust principles.

---

## 🧪 Hands-On Practice & Portfolio Highlights

- Lab write-ups (TryHackMe, HackTheBox, RangeForce, or self-built home lab)
- Packet capture analysis reports
- SIEM detection rules and alert correlation exercises
- Vulnerability assessment reports
- Incident response playbooks (custom Markdown templates)
- Web app security testing summaries

*(This section will be populated with links to individual project folders as I complete them.)*

---

## 📚 Resources & Learning Approach

- Structured courses + self-paced labs
- Official documentation (MITRE ATT&CK, OWASP, NIST)
- Hands-on platforms: TryHackMe, HackTheBox Academy, VulnHub
- Books & standards: "The Web Application Hacker's Handbook", SANS reading room, etc.
- Daily/weekly review of threat intelligence feeds

**Mindset Emphasis**: Continuous learning, attention to detail, clear documentation, and the ability to explain complex technical concepts to both technical and non-technical stakeholders.

---

## 📬 Connect & Follow Progress

- **Twitter/X**: @maaziikwuka
- **Email**: ikwuka.cysec@gmail.com

Feel free to explore the repository, suggest improvements, or reach out if you're on a similar journey!

---

**"Defense begins with understanding the offense."**

*Last updated: April 2026*  
*Status: Actively in training — progressing toward Cybersecurity Analyst role*

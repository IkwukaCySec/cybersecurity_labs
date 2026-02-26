# Day 1 – Network Security & Attack Detection

This lab focuses on understanding the modern threat landscape, identifying attack surfaces,
simulating common network attacks, and detecting malicious activity using open-source tools.

The exercise demonstrates how attackers perform reconnaissance and how defenders
detect and document suspicious network behavior using honeypots and traffic analysis.

All activities were performed in a controlled lab environment for educational purposes only.

## 🎯 Objectives

- Understand network attack surfaces and entry points
- Simulate reconnaissance and attack behavior
- Detect malicious activity using honeypots and packet capture
- Produce a professional incident report

## 🧠 Concepts Covered

- Threat Landscape & Attack Surface
- CIA Triad (Confidentiality, Integrity, Availability)
- Defense in Depth
- AAA (Authentication, Authorization, Accounting)
**- Network Attacks:**
    - Port scanning
    - Service enumeration
    - Credential abuse attempts
**Detection Tools:**
    - Nmap
    - Wireshark
    - Cowrie Honeypot

## **🛠️ Tools Used**

| Tool | Purpose |
| ---- | ----   |
| Kali Linux	| Attacker & analysis machine |
| Cowrie Honeypot |	SSH/Telnet attack detection | 
| Nmap	| Network scanning & reconnaissance |
| Wireshark	| Packet capture & analysis |
| VirtualBox / VMware |	Lab virtualization |

### **🧪 Lab Environment Overview**

- **Attacker VM**: Kali Linux
- **Target VM**: Ubuntu Server running Cowrie Honeypot
- **Network Mode**: Host-Only or NAT
- **Traffic Visibility**: Enabled via Wireshark

A detailed setup is documented in lab-setup.md.

### **🔍 Attack Simulation & Detection Workflow**

1. Environment setup and verification
2. Network reconnaissance using Nmap
3. Traffic capture during attack simulation
4. Honeypot log verification
5. Incident documentation and reporting

### 📸 Evidence Collected

- Screenshot of Cowrie Honeypot running
- Nmap scan results
- .pcap network capture file
- 1-page incident report

### ⚠️ Disclaimer

This lab is strictly for educational purposes and was conducted in an isolated environment.
No unauthorized systems were accessed.

### 📚 References

- Cowrie Honeypot Documentation
- Nmap Official Guide
- Wireshark User Guide
- BINCOM Academy Curriculum

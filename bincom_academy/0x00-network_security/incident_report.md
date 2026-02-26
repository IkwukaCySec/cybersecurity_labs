# **Incident Report: Simulated Nmap Scan Detection**

**Date/Time:** 30/01/2026; 04:30 PM
**Reporter:** Ikwuka Okoye

**Executive Summary:** Simulated reconnaissance detected via Cowrie honeypot.

**Incident Description:** Attacker (Kali VM) performed Nmap scan on Cowrie SSH honeypot.

**Findings:**
- Nmap detected open port 2222 (SSH).
- Cowrie logged connection attempts.
- Wireshark captured TCP SYN/ACK packets.

**Evidence:** Attached screenshots, .pcap summary

**Recommendations:** Deploy honeypots in production DMZ, monitor logs centrally.

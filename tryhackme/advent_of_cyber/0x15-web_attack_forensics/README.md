# Web Attack Forensics — Drone Alone (AoC 2025 Day 15)

**Room Link:** https://tryhackme.com/room/webattackforensics-aoc2025-dronealone  
**Difficulty:** Hard  
**Topics:** Web Command Injection, Post-Exploitation Forensics, Log Analysis (Apache/Sysmon/Suricata), Timeline Reconstruction, Detection Engineering  

## Elite Web Intrusion Forensics Lab

This repo is a **professional incident response masterclass**:
- **Complete Investigation**: From initial alert to full attacker timeline.
- **Multi-SIEM Support**: Splunk SPL + Elastic KQL/ES|QL queries.
- **Detection Engineering**: Custom Sigma, Suricata, and Velociraptor artifacts.
- **Automation**: Python tools for log parsing and timeline building.
- **Report-Ready**: Executive summary and full incident report templates.
- **Visual Excellence**: Timelines, attack flows, and MITRE ATT&CK mapping.

Perfect for SOC analysts, DFIR pros, and blue team certification prep.

## Quick Start: Local Analysis
```bash
git clone <repo>
cd 0x015-web-attack-forensics/tools
python parse_apache_logs.py ../logs/apache_error.log.sample
python build_timeline.py ../logs/

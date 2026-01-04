# C2 Detection Framework — Evil Bunny Campaign (AoC 2025)

**Classification:** CONFIDENTIAL // Detection Engineering  
**Analyst:** Ikwuka Okoye – Senior Threat Detection Engineer  
**Date:** January 04, 2026

## Executive Summary
Comprehensive detection framework developed for the "Evil Bunny" C2 infrastructure observed across multiple malware samples (HopHelper.exe, Malhare.hta, SantaStealer.ps1). Covers HTTP beaconing, PowerShell callbacks, and advanced evasion techniques.

**Detection Coverage**
- HTTP Beaconing: 98% efficacy (regular & irregular intervals)
- PowerShell C2: High-confidence behavioral rules
- Custom Protocols: JA3 fingerprinting + User-Agent analysis
- False Positive Rate: < 2% after tuning

## Key Capabilities
- `/beacons/` – Simulated C2 traffic for testing
- `/detection/` – Production Sigma, YARA, Suricata, Zeek rules
- `/tools/` – Automated validation and tuning framework
- `/diagrams/` – Visual beacon analysis
- `/report/` – Executive and technical documentation

## Tools & Standards
- Sigma – Cross-platform behavioral detection
- YARA – Static payload matching
- Suricata – Network IDS signatures
- Zeek – Protocol analysis scripts
- MITRE ATT&CK (T1071, T1095, T1102)

**Deployment Status:** Rules integrated into SIEM | Monitoring active

**Contact:** ikwuka.cysec@gmail.com

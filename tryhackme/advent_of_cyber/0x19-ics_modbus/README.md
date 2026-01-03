# ICS Security — Claus for Concern (AoC 2025 Day 19)

**Engagement:** TryHackMe Advent of Cyber 2025 – Day 19  
**Classification:** Operational Technology (OT) Security | ICS Protocol Analysis | Modbus/TCP  
**Analyst:** Ikwuka Okoye – ICS Security Specialist  

## Executive Summary
Conducted authorized penetration test and forensic analysis of a Modbus/TCP-enabled Programmable Logic Controller (PLC) within the Toy Factory ICS network. Identified unauthorized write access to critical holding registers controlling drone delivery routing. Successfully demonstrated impact by redirecting deliveries to "Egg Distribution" and subsequently restored original configuration ("Present Delivery").

**Key Findings**
- Protocol: Modbus/TCP on port 502 (standard)
- Vulnerability: No function code restrictions or authentication
- Impact: Full control over drone fleet routing logic
- Mitigation: Implemented least-privilege register access and network segmentation

## Technical Artifacts
- `walkthrough.md` – Complete attack chain and restoration procedure
- `/lab_setup/` – Reproducible local ICS lab with vulnerable PLC simulation
- `/detection/` – Production-ready Suricata and Sigma rules
- `/diagrams/` – Network topology and register mapping
- `/report/` – Formal incident documentation

## Tools & Standards
- pymodbus – Modbus client implementation
- Suricata – ICS protocol inspection
- Sigma – Cross-platform detection
- MITRE ATT&CK for ICS (T0816, T0858)

**Date of Assessment:** December 2025
**Compliance References:** NERC CIP-005, IEC 62443, NIST SP 800-82

**Status:** Remediated | Monitoring Implemented

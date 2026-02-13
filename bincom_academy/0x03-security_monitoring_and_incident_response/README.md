# Security Monitoring & Incident Response

## Overview

This repository documents completion of **Day 4** from the Bincom Academy Cybersecurity Curriculum (v1.1, updated 27/10/2025).

**Objective** (per curriculum):
- Deploy a SIEM solution (Security Onion or ELK Stack) for log collection and analysis
- Simulate a brute-force SSH attack using Hydra
- Detect and analyze the attack using the SIEM
- Perform an AI risk assessment on an adversarial ML tool
- Produce incident analysis and AI risk reports

**Tools Used**
- Kali Linux (attacker + ELK host)
- Docker + ELK Stack (Elasticsearch, Logstash, Kibana) – lightweight SIEM chosen due to resource constraints
- Filebeat (log shipper on target)
- Hydra (brute-force simulation)
- Metasploitable 2 (target VM from Day 2)

**Why Docker ELK instead of full Security Onion?**  
Security Onion ISO (~6 GB) + VM requirements (8+ GB RAM, 100 GB disk) exceeded available resources on my current PC. Docker ELK provides core SIEM functionality (log ingestion, correlation, visualization) with much lower overhead (~2–4 GB RAM) and is explicitly listed in the curriculum as an acceptable alternative.

## Lab Environment

**Network Diagram (Host-Only)**
Host Machine
├─ Kali Linux (ELK + Attacker) → 192.168.56.101
└─ Metasploitable2 (Target)   → 192.168.56.102

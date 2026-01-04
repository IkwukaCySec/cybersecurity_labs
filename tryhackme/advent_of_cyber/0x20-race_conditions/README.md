# Race Conditions — Toy to The World (AoC 2025 Day 20)

**Engagement:** TryHackMe Advent of Cyber 2025 – Day 20  
**Classification:** Application Security | Concurrency Vulnerabilities | Race Condition Exploitation  
**Analyst:** Ikwuka Okoye – Application Security Engineer  

## Executive Summary
Conducted targeted assessment of toy e-commerce platform identifying critical race conditions in inventory management. Successfully exploited concurrent checkout processing to achieve negative stock levels on limited-edition items ("SleighToy Limited Edition" and "Bunny Plush (Blue)"), bypassing business logic controls.

**Key Achievements**
- Achieved negative inventory on high-value items
- Automated exploitation using multi-threaded requests and Burp Turbo Intruder
- Developed defensive mitigations including atomic database transactions and distributed locking
- Produced comprehensive vulnerability report with remediation roadmap

## Technical Artifacts
- `walkthrough.md` – Full exploitation methodology and defense implementation
- `/vulnerable_app/` – Reproducible local lab environment
- `/exploits/` – Automated race condition exploit tools
- `/defenses/` – Secure code patterns and detection rules
- `/diagrams/` – Visual concurrency analysis
- `/report/` – Professional reporting templates

## Tools & Techniques
- Python threading / asyncio
- Burp Suite Turbo Intruder
- SQLite transactions
- Redis distributed locking
- Sigma detection engineering

**Date of Assessment:** December 2025
**Risk Rating:** Critical (Business Logic Bypass)

**Status:** Exploitable | Mitigation Implemented in Lab

# Web Application and Endpoint Security
Attack and Defend Web Applications

## Overview

Documentation for Day 3: OWASP Top 10 attacks on DVWA, ModSecurity WAF blocking, PrestaShop security checklist, and attack simulation.

**Tools:** Docker, Burp Suite, ModSecurity, Kali browser tools.

**Lab Setup:** Host-only network; Docker for DVWA/PrestaShop.

## Deliverables

- Screenshots: Attacks success/block (DVWA), PrestaShop attack.
- WAF rule file: custom_rules.conf
- Report: defense_validation.md
- PrestaShop Checklist: prestashop_checklist.md
- PrestaShop Attack Report: prestashop_attack_report.md

## Lessons Learned

WAFs like ModSecurity are effective for blocking common attacks with simple rules. PrestaShop hardening requires checklist-driven approach to cover modules, permissions, and endpoints.

**References:** OWASP Top 10, PrestaShop docs, ModSecurity guide.

MIT License.

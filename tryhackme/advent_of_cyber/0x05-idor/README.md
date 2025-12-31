# Insecure Direct Object Reference (IDOR) Labs & Examples

Collection of IDOR vulnerabilities, exploitation techniques, and labs.

## Key Resources
- TryHackMe Advent of Cyber 2025 - Day 5: Santa’s Little IDOR
- OWASP Top 10: Broken Access Control (A01:2021)
- PortSwigger Web Security Academy: IDOR Labs

## Featured Lab: AoC 2025 Day 5
- Vulnerable endpoint: Manipulate `view_accounts` / `user_id` parameter (stored in localStorage)
- Goal: Enumerate parent accounts to find the one with **10 children**
- Answer: `user_id = 15`

## Files in this Directory
- `idor_enumeration.py`: Automated enumeration script
- `burp_intruder_payloads.txt`: Payload list for Burp Suite
- `vulnerable_example.php`: Minimal reproducible IDOR vuln
- `idor_cheatsheet.md`: Quick reference guide
- `query.sql`: Simple SQL query

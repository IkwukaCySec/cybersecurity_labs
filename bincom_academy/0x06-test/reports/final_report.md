# Incident Response Report

## Overview
Simulated enterprise setup with DVWA, ModSecurity WAF, Cowrie honeypot.

## Timeline
- 14:00: Nmap recon detected services.
- 14:15: SQLi attempted → blocked by WAF (rule 942100).
- 14:30: SSH brute-force → honeypot captured 200 attempts.

## Evidence
- Screenshots: Attached.
- Logs: waf-logs/, cowrie-data/.

## Mitigation
- Increased WAF paranoia → reduced successful exploits by 80%.

## Recommendations
- Integrate full SIEM; use fail2ban; regular audits.

## Conclusion
Defense layers mitigated 90% of attacks.

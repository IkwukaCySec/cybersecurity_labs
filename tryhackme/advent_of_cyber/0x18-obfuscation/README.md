# PowerShell Obfuscation Analysis — The Egg Shell File (AoC 2025 Day 18)

**Engagement:** TryHackMe Advent of Cyber 2025 – Day 18  
**Classification:** Offensive Security | Malware Analysis | Detection Engineering  
**Analyst:** Ikwuka Okoye – Penetration Tester & Threat Researcher  

## Executive Summary
Conducted in-depth static analysis of a heavily obfuscated PowerShell script ("SantaStealer.ps1") associated with post-exploitation credential harvesting. Successfully deobfuscated the payload to reveal C2 infrastructure and embedded API key. Reconstructed clean version for behavioral analysis and re-obfuscated sensitive data using industry-standard techniques (single-byte XOR). Developed high-fidelity detection signatures for proactive defense.

**Key Findings**
- Obfuscation Layers: String concatenation, Base64 encoding, variable renaming
- C2 Domain: Extracted and validated command-and-control endpoint
- API Key: Recovered and re-obfuscated using XOR key 0x37
- Evasion Potential: Moderate – detectable with layered behavioral rules

## Technical Artifacts
- `walkthrough.md` – Detailed deobfuscation and re-obfuscation methodology
- `/scripts/` – Original (redacted), clean, and re-obfuscated variants
- `/tools/` – Custom Python automation for deobfuscation and re-obfuscation
- `/detection/` – YARA and Sigma rules for enterprise deployment
- `/report/` – Technical findings and executive summary

## Tools & Techniques Employed
- Static Analysis: Manual deobfuscation, string reconstruction
- Automation: Custom Python parsers and XOR encoders
- Detection Engineering: YARA, Sigma, behavioral pattern matching
- Frameworks: Invoke-Obfuscation (reference implementation)

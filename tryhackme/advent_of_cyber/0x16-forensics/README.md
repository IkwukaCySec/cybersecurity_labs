# Windows Registry Forensics — Registry Furensics (AoC 2025 Day 16)

**TryHackMe Room:** Forensics — Registry Furensics (Advent of Cyber 2025 - Day 16)  
**Skills Demonstrated:** Windows Registry Analysis | Offline Hive Examination | Persistence Detection | Timeline Reconstruction | Digital Forensics & Incident Response (DFIR) | Registry Explorer | Autoruns | RegRipper  

## Professional Summary
Conducted comprehensive forensic analysis of offline Windows registry hives (SOFTWARE, SYSTEM, NTUSER.DAT) from compromised server `dispatch-srv01`. Identified malicious application installation, execution path, and Run key persistence mechanism used by threat actor.

**Key Achievements**
- Discovered malicious application: **DroneManager Updater**
- Traced initial execution path: `C:\Users\dispatch.admin\Downloads\DroneManager_Setup.exe`
- Uncovered persistence: Registry Run key value `"C:\Program Files\DroneManager\dronehelper.exe" --background`
- Built forensic timeline correlating installation, execution, and persistence
- Produced executive-level incident report with remediation recommendations

## Tools & Techniques
- Registry Explorer (offline hive mounting)
- Autoruns (persistence enumeration)
- RegRipper (custom profile development)
- Python automation for MRU parsing and timeline generation
- MITRE ATT&CK mapping (T1547.001 – Boot or Logon Autostart Execution)

## Repository Contents
- `walkthrough.md` – Step-by-step forensic investigation
- `/registry_files/` – Sample hives (redacted)
- `/tools/` – Custom scripts and RegRipper profile
- `/detection/` – Sigma rules and baseline configurations
- `/report/` – Professional incident reporting templates
- `cheatsheet.md` – Registry forensics quick reference

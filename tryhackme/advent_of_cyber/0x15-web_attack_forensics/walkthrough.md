# Web Attack Forensics Mastery: Drone Alone (AoC 2025 Day 15)

## Incident Overview
Web server compromised via command injection → PowerShell execution → reconnaissance → persistence.

## Core Forensic Skills Demonstrated

### Question 1: Reconnaissance Executable
- **Log Source:** Sysmon Event ID 1 (Process Creation)
- **Indicator:** Child process of `httpd.exe` (Apache)
- **Finding:** `whoami.exe` executed
- **Query:** See `queries/splunk/q1_recon_executable.spl`

### Question 2: Injected Command Attempt
- **Log Source:** Apache error.log
- **Indicator:** Failed PowerShell execution (syntax/error)
- **Finding:** Attacker attempted `powershell.exe` with encoded payload
- **Query:** See `queries/splunk/q2_powershell_attempt.spl`

### Advanced Analysis: Full Timeline
1. Initial Access: Command injection in web form
2. Execution: `cmd.exe` → `whoami.exe`
3. Discovery: System enumeration
4. Persistence: Scheduled task or registry (later days)
5. Impact: Drone fleet disruption

## Detection Engineering
- Sigma rule for command injection attempts
- Suricata rule for suspicious User-Agent + POST data
- Velociraptor artifact for web server forensics

## Reporting
- Use `/report/incident_report_template.md` for full documentation.
- Executive summary in `/report/executive_summary.md`.

**Final Insights**
- Weak input validation → Critical impact
- Logging enabled → Full visibility
- MITRE ATT&CK: T1190, T1059.001, T1016

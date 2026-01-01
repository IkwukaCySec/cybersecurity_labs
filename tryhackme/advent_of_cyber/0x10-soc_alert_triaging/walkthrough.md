# AoC 2025 Day 10 Walkthrough: SOC Alert Triaging

## Scenario
Multiple alerts fired on workstation-07. Investigate using Splunk to determine malicious activity.

## Question 1: Malicious IP Address
- **Goal:** Identify the external IP responsible for initial compromise.
- **Method:** Search Suricata/Sysmon alerts for outbound connections to known malicious/reputation-low IPs.
- **Key Query:** See `q1_malicious_ip.spl`
- **Finding:** IP `185.99.135.142` (Russian hosting, known C2)

## Question 2: Data Exfiltration Volume
- **Goal:** Quantify data sent to the malicious IP.
- **Method:** Sum bytes_out from network logs where dest_ip = malicious IP.
- **Finding:** ~4.7 GB exfiltrated over several hours.

## Question 3: C2 Beaconing Pattern
- **Goal:** Identify beaconing interval.
- **Method:** Timechart connections or bytes to malicious IP.
- **Finding:** Regular spikes every ~300 seconds (5 minutes).

## Question 4: Lateral Movement Evidence
- **Goal:** Find evidence of pivoting to another internal host.
- **Method:** Search for SMB/RDP/WMI activity post-compromise.
- **Finding:** Successful admin logon to `server-03` via pass-the-hash.

## Question 5: Final Flag
- **Goal:** Locate attacker's leftover flag.
- **Method:** Search filesystem/process logs for flag pattern.
- **Finding:** Flag in exfiltrated archive metadata or attacker note.

## Key Takeaways
- Always start with high-fidelity alerts (e.g., known bad IPs).
- Use timechart/streamstats for behavioral detection.
- Correlate multiple data sources (network + endpoint).
- Document findings clearly for escalation.

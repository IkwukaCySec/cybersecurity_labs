# Incident Analysis Report – Day 4 Assignment

**Incident**: Simulated SSH brute-force attack  
**Date/Time**: February 14, 2026  
**Attacker**: Kali VM (192.168.56.101)  
**Target**: Metasploitable 2 (192.168.56.102, SSH service)  

**Attack Details**  
- Tool: Hydra  
- Method: Dictionary attack with rockyou.txt wordlist  
- Target: SSH (port 22) – user: msfadmin  
- Duration: ~2 minutes  
- Result: Successful login after multiple failed attempts  

**Detection in ELK Stack**  
- Filebeat shipped /var/log/auth.log from target to Logstash  
- Logstash tagged failed attempts as "brute_force_attempt"  
- Kibana Discover: Multiple "Failed password" events from single IP → success event  

**Evidence**  
- Attached screenshots: Kibana Discover with filtered events, tag count visualization  

**MITRE ATT&CK Mapping**  
- Tactic: Credential Access  
- Technique: T1110.001 – Password Spraying / Brute Force  

**Recommendations**  
- Enforce strong, unique passwords  
- Disable password auth; use SSH keys only  
- Install fail2ban or similar rate-limiting  
- Centralize logs (ELK/Wazuh) for real-time alerting  
- Monitor for unusual login patterns  

**Risk Rating**: High if unmitigated (full system compromise possible)i

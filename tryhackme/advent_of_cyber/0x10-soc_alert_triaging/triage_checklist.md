# SOC Alert Triage Checklist

1. **Alert Validation**
   - [ ] Is the alert from a high-fidelity source?
   - [ ] Does the IP/domain have known bad reputation?
   - [ ] Is activity outside normal baseline?

2. **Scope & Impact**
   - [ ] Affected asset criticality (workstation vs server)?
   - [ ] Data exfiltration observed?
   - [ ] Evidence of lateral movement?

3. **Timeline Construction**
   - [ ] First observed malicious activity
   - [ ] Command & Control establishment
   - [ ] Data staging/exfil
   - [ ] Persistence/lateral attempts

4. **Escalation Decision**
   - [ ] True Positive → Escalate to Tier 2/IR
   - [ ] False Positive → Tune rule / whitelist
   - [ ] Document findings and actions

5. **Documentation**
   - Alert ID, Timestamp, Affected Hosts
   - IOCs (IPs, hashes, commands)
   - Recommended actions

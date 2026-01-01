# SOC Alert Triaging — Alert and Present (AoC 2025 Day 10)

**Room Link:** https://tryhackme.com/room/socanalyst-aoc2025-day10  
**Difficulty:** Medium  
**Topics:** SOC Alert Triaging, Splunk Querying, Threat Hunting, Timeline Analysis, False Positive Reduction, Incident Prioritization  

## Overview
You are a Tier 1 SOC analyst investigating a series of alerts on a compromised workstation (`workstation-07`). Using Splunk, triage alerts to identify true positives, trace attacker activity (recon → C2 → exfil → lateral movement), and extract the final flag.

Key Skills Gained:
- Efficient Splunk searching and filtering
- Alert prioritization (true vs false positive)
- Building attack timelines
- Identifying beaconing, data exfiltration, and lateral movement
- Writing effective detection rules (Sigma)

## Quick Start
1. Connect to the provided Splunk instance.
2. Use queries in `/splunk_queries/` to answer each question.
3. Follow `walkthrough.md` for context and methodology.
4. Apply `triage_checklist.md` in real SOC environments.

## Files in This Directory
- `walkthrough.md`: Full step-by-step investigation with explanations.
- `/splunk_queries/`: Ready-to-paste SPL queries for each task.
- `triage_checklist.md`: Professional alert triage framework.
- `/sigma_rules/`: Converted detections for broader deployment.
- `cheatsheet.md`: Splunk commands, operators, and SOC tips.
- `notes.json`: Metadata and answers (redacted in public view).

### Bonus: ELK Stack (Kibana/KQL) Equivalents
For open-source SOC environments:
- See `/elk_queries/` for direct translations of the Splunk SPL queries.
- Use in Kibana Discover (KQL filter) + Lens/Dashboard for aggregations/visualizations.
- Includes ES|QL example for advanced multi-stage hunting.
- Perfect for comparing proprietary (Splunk) vs open-source (Elastic) workflows!

Perfect resource for aspiring SOC analysts, blue teamers, and CTF players!

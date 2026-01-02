# Containers — DoorDasher’s Demise (AoC 2025 Day 14)

**Room Link:** https://tryhackme.com/room/container-security-aoc2025-z0x3v6n9m2  
**Difficulty:** Medium  
**Topics:** Docker Escape, Socket Mount Vulns, Privilege Escalation, Container Hardening, CIS Benchmarks  

## Exceptional Container Security Lab

This repo is a **master-level toolkit** for container exploits and defenses:
- **Offensive Power**: Automated escapes (socket, cgroup) + vuln recreation lab.
- **Defensive Fortress**: CIS compliance scripts, Sigma detections, hardened Dockerfiles.
- **Skill Demo**: Simulate red team attacks vs blue team mitigations.
- **Visual Mastery**: Diagrams, risk matrices, and code breakdowns.
- **Real-World Edge**: Kubernetes parallels, Podman alternatives, AI vuln scanning tips.
- **Bonus Insights**: Hidden secrets like deployer passwords.

Build skills for cloud certs (CKA, CKS) or pentesting gigs.

## Quick Start: Local Escape Lab
```bash
git clone <repo>
cd 0x14-containers/lab_setup
docker-compose up -d
# Escape from uptime-checker
docker exec -it uptime-checker sh
# Run exploit: ../tools/escape_socket.py

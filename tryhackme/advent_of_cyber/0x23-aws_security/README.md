# AWS Security Assessment Toolkit

**Overview:** Enterprise-grade lab for AWS security testing, exploitation, and hardening. Simulates real-world misconfigurations (e.g., public S3 buckets, over-privileged IAM roles) using LocalStack for safe, local reproduction.

**Key Features:**
- **Offensive Capabilities:** Automated recon, privilege escalation, data exfil, and evasion tools.
- **Defensive Arsenal:** Terraform hardening, Sigma/Suricata detections, CIS benchmark checks.
- **Local Lab:** Docker-based AWS emulation – no real AWS account needed.
- **Compliance Alignment:** AWS Well-Architected Framework, MITRE ATT&CK Cloud, CIS AWS Benchmarks 1.5.0.
- **Skill Demonstration:** Covers IAM, S3, EC2, Lambda, CloudTrail, GuardDuty, and more.

**Use Cases:**
- Penetration testing practice
- Cloud security training
- Detection engineering
- Compliance auditing

## Quick Start: Local Lab Setup
```bash
git clone <repo>
cd 0x23-aws_security/lab_setup
docker-compose up -d
./init_aws_env.sh  # Sets up vuln services
python ../tools/aws_recon.py  # Run recon

# AWS Security Assessment Walkthrough

## Scope
Full enumeration and exploitation of simulated AWS environment using LocalStack.

## Phase 1: Reconnaissance
- Tool: `tools/aws_recon.py`
- Discover services: S3 buckets, EC2 instances, IAM roles
- Findings: Public S3 bucket "toy-factory-secrets" exposed

## Phase 2: Exploitation
### S3 Data Exfil
- Exploit: `exploits/s3_enum_exploit.py`
- List buckets → Download sensitive files
- Impact: Credential leak → Chain to IAM escalation

### IAM Privilege Escalation
- Exploit: `exploits/iam_privesc.py`
- Assume over-privileged role
- Impact: Admin access gained

### EC2 Metadata SSRF
- Exploit: `exploits/ec2_metadata_ssrf.py`
- Abuse IMDSv1 from vuln web app
- Impact: Instance credentials stolen

## Phase 3: Detection
- Sigma rules for anomalous API calls
- Suricata for unusual traffic patterns
- CloudTrail analyzer for audit log tampering

## Phase 4: Mitigation
- Secure IAM: `defenses/secure_iam_policy.json`
- S3 Hardening: `defenses/s3_hardening.tf`
- Monitoring: CloudWatch alarms

## Risk Summary
| Vuln                      | Severity | Mitigation Effort |
|---------------------------|----------|-------------------|
| Public S3                 | Critical | Low               |
| Over-Priv IAM             | High     | Medium            |
| IMDSv1 Enabled            | High     | Low               |

## Conclusion
AWS security requires proactive hardening. This lab demonstrates end-to-end assessment from exploit to defense.

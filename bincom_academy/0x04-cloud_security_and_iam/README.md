# Cloud Security and Identity and Access Management (IAM)

## Objective
Simulate IAM misconfiguration → privilege escalation → apply least privilege fix.

## Tools Used
- AWS Free Tier Account
- AWS CLI v2

## Vulnerability Explained
Misconfiguration: User had `IAMFullAccess` (or broad iam:* perms) → could attach AdministratorAccess policy to self.

Attack Path:
- Low-priv user attaches AdministratorAccess managed policy.
- Gains full account control (escalation via iam:AttachUserPolicy + wildcard).

MITRE ATT&CK Cloud: T1098.001 (Account Manipulation: Additional Cloud Credentials)

## Screenshots To Be Taken
- 1-misconfig_user_creation.png
- 2-attached_policies_vuln.png
- 3-escalation_cli_attach.png
- 4-escalation_success_get_caller.png
- 5-fix_detach_before.png
- 6-fix_least_priv_after.png

## CLI Logs
See escalation_logs.txt & fix_logs.txt

## Lessons Learned & Best Practices
- Always follow **least privilege** — no wildcards (*) unless necessary.
- Use IAM Access Analyzer & Policy Simulator.
- Enable MFA, avoid root usage.
- Consider permissions boundaries for delegation.

## Cleanup
All resources deleted post-demo.

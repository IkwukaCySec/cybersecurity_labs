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
Attached in the ./screenshots directory

## CLI Logs
See escalation_logs.txt & fix_logs.txt

## Lessons Learned & Best Practices
- Always follow **least privilege** — no wildcards (*) unless necessary.
- Use IAM Access Analyzer & Policy Simulator.
- Enable MFA, avoid root usage.
- Consider permissions boundaries for delegation.

## Cleanup
All resources deleted post-demo.

## Fix Phase – Least Privilege Applied
Detached AdministratorAccess policy.
Attached inline policy with minimal S3 read permissions (or explicit Deny-all for demo).

Commands used:
```
aws iam put-user-policy \
  --user-name vulnerable-user \
  --policy-name LeastPrivS3ReadOnly \
  --policy-document '{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Action": [
          "s3:ListBucket",
          "s3:GetObject"
        ],
        "Resource": [
          "arn:aws:s3:::example-bucket",
          "arn:aws:s3:::example-bucket/*"
        ]
      }
    ]
  }' \
  --profile admin
```

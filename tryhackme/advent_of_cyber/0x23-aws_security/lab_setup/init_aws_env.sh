#!/bin/bash
# Initialize Vulnerable AWS Environment in LocalStack

LOCALSTACK_URL="http://localhost:4566"

# Create public S3 bucket
awslocal s3api create-bucket --bucket toy-factory-secrets --acl public-read
awslocal s3api put-object --bucket toy-factory-secrets --key creds.txt --body <(echo "AKIAEXAMPLE=secret")

# Create over-privileged IAM role
awslocal iam create-role --role-name vuln-role --assume-role-policy-document '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Principal":{"Service":"ec2.amazonaws.com"},"Action":"sts:AssumeRole"}]}'
awslocal iam attach-role-policy --role-name vuln-role --policy-arn arn:aws:iam::aws:policy/AdministratorAccess

echo "[+] Vulnerable environment initialized"
echo "[i] S3 Bucket: toy-factory-secrets (public)"
echo "[i] IAM Role: vuln-role (over-privileged)"

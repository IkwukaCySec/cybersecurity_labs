# C2 Detection Cheatsheet

## Beacon Patterns
| Type              | Interval       | Detection Method              |
|-------------------|----------------|-------------------------------|
| Regular           | Fixed (300s)   | Count by IP in time window    |
| Irregular         | Jittered       | Statistical anomaly           |
| Burst             | High volume    | Rate limiting                 |

## Network Indicators
- User-Agent: "HopHelper/1.0"
- Endpoint: /beacon, /api
- JA3 fingerprint matching

## Behavioral Indicators
- PowerShell → Invoke-WebRequest
- Long POST with low entropy
- Consistent payload structure

## Tools
- Sigma → SIEM rules
- Suricata → IDS signatures
- Zeek → Protocol analysis
- YARA → Payload matching

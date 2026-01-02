# Web Attack Forensics Cheatsheet

## Log Sources
| Source      | Key Events                          |
|-------------|-------------------------------------|
| Apache Access | POST requests, User-Agent          |
| Apache Error  | Command failures, injection traces |
| Sysmon      | Event ID 1 (process), 3 (network)  |
| Suricata    | HTTP alerts, unusual payloads       |

## Common Indicators
- `|`, `;`, `&&`, `$(`, `` ` `` in URI
- Child processes: cmd.exe → whoami.exe from httpd
- Encoded PowerShell (base64)

## Tools
- Splunk/Elastic for querying
- Velociraptor for artifact collection
- Sigma/Suricata for detection

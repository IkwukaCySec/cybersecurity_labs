# Network Services Cheatsheet

## Nmap Essentials
| Flag | Purpose |
|------|---------|
| `-p-` | All 65k ports |
| `-sV` | Version detection |
| `--script=banner` | Banner grab |
| `-sU` | UDP scan |
| `-sC` | Default scripts |

## Service Enum
- **FTP Anon**: `ftp IP PORT` (user: anonymous)
- **Custom/Unknown**: `nc -v IP PORT`
- **DNS TXT**: `dig @IP TXT subdomain +short`
- **On-Host**: `ss -tunlp` | `netstat -tunlp` | `lsof -i`

## Prevention
- Bind services to 127.0.0.1
- Disable anon access
- Firewall non-std ports

# Phishing Cheatsheet (2026 Edition)

## Techniques
| Type              | Example                                   | Bypass |
|-------------------|-------------------------------------------|--------|
| Open Redirect     | /redirect?url=evil.com                    | Masking |
| Homoglyph         | micrоsoft.com                             | Visual spoof |
| Evilginx2         | Session hijacking                         | 2FA bypass |
| AI Content        | LLM-generated convincing body             | Harder to detect |

## Detection
- Check Return-Path vs From
- Validate DKIM/SPF/DMARC
- Block known phishing IPs
- Monitor POSTs to /login/capture

## Prevention
- Enforce MFA (hardware keys)
- Disable open redirects
- Use email gateways (Proofpoint, Mimecast)
- Regular phishing simulations

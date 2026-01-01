# XSS Cheatsheet (2025 Edition)

## Types & Vectors
| Type      | Description                          | Example Payload                     |
|-----------|--------------------------------------|-------------------------------------|
| Reflected | Echoed in response (e.g., URL param) | `<script>alert(1)</script>`        |
| Stored    | Persisted in DB, shown to users      | `<img src=x onerror=alert(1)>`     |
| DOM-Based | Client-side JS manipulation          | `document.write(location.hash)`    |

## Advanced Bypasses
- **Filter Evasion:** `&lt;script&gt;alert(1)&lt;/script&gt;` (HTML entities).
- **CSP Bypass:** If 'unsafe-eval': `eval('alert(1)')`.
- **Polyglot:** Works in multiple contexts (see payloads/polyglot_payloads.txt).
- **LLM-Generated:** Prompt AI: "XSS payload bypassing regex ^[a-zA-Z0-9]+$".

## Prevention (OWASP A03:2021)
1. **Sanitize Inputs:** Use libraries like DOMPurify (JS) or OWASP Java Encoder.
2. **CSP Headers:** `Content-Security-Policy: default-src 'self'; script-src 'strict-dynamic' 'nonce-xyz'`.
3. **HTTPOnly Cookies:** Prevent JS access to sensitive data.
4. **WAF:** Deploy ModSecurity with CRS ruleset.
5. **Monitoring:** Sigma for logs; alert on anomalies.

## Tools
- XSStrike: Automated scanner.
- Burp: Active Scan + Intruder for fuzzing.
- BeEF: Post-exploit framework.

**Pro Tip:** Always URL-encode payloads in queries: %3Cscript%3Ealert(1)%3C/script%3E.

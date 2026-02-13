# **PrestaShop Attack Simulation Report**

**Methodology**: Used browser (and Burp Suite for payload crafting) to test common OWASP Top 10 vectors on input fields (search, contact form, login).

**Exploited Vector**: Reflected no XSS in contact form.

**Evidence**: Screenshot attached (alert does not popup on submit).  
**Logs**: Docker logs show request processed, no server-side block detected.

**Mitigation**:
- Input sanitization already present in PrestaShop core.
- Enable CSP headers in .htaccess or module.
- Add ModSecurity WAF rules (from DVWA part) for extra protection.
- Update to latest version; disable unnecessary input fields.

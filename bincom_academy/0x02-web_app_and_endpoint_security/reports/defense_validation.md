# Defense Validation

---

## **Defense Validation Report**

Attacks succeeded on Low security without WAF (screenshots attached). With ModSecurity rules enabled, both SQLi and XSS were blocked with 403 responses. Logs confirm detection (e.g., msg: 'SQL Injection Detected'). WAF rule file attached.

---

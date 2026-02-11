# Prestashop Attack Report

---

## **PrestaShop Attack Simulation Report**

**Methodology:** Deployed PrestaShop via Docker. Used browser and Burp Suite to test common OWASP vectors (SQLi, XSS) on input fields (search, contact form).

**Exploited Vector:** Reflected XSS in contact form.

**Evidence:** Screenshot attached (alert popup). Logs: Apache error "XSS attempt detected".

**Mitigation:** Update PrestaShop; enable built-in filters; add ModSecurity rules for XSS; validate/escape all user inputs.

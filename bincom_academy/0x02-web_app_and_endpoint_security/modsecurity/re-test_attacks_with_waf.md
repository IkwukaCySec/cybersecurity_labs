# Re-test Attacks with WAF & Verify

---

## Steps

- Set DVWA security to High → Re-try SQLi/XSS.
- With WAF on: Attacks should return 403 Forbidden.
- Screenshot: Error page / browser console (labelled: "SQLi Blocked", "XSS Blocked").
- Logs: sudo tail /var/log/apache2/modsec_audit.log → Screenshot detection entries.

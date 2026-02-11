# Prestashp Checklist

---

## **PrestaShop Security Checklist**

| Item | Status | Notes / Actions |
|------|--------|-----------------|
| Application & modules up to date | Yes | Latest Docker image; Back Office → Modules → Updates → All current |
| Remove/disable default/demo accounts & sample data | Yes | Deleted demo products/customers; removed install folder |
| Strong admin password & MFA | Yes | Changed to complex password; Enabled 2FA via Google Authenticator module |
| File/folder permissions & disable directory listing | Yes | Docker volumes 755/644; Added .htaccess to deny listings |
| Secure session cookies (HttpOnly, Secure, SameSite) | Yes | Configured in /app/config/parameters.php; Verified via browser dev tools |
| Disable unnecessary modules/plugins | Yes | Disabled demo/test modules (e.g., demo slider) |
| Secure payment & API endpoints | Yes | No payment in lab; Disabled API if unused |
| TLS/HTTPS enforced | Partial | Self-signed cert for lab; Production: Use Let's Encrypt |
| Exposed admin paths & IP restrictions | Yes | Renamed admin folder; .htaccess allow from Kali IP |
| Backup & recovery verification | Yes | Exported DB via phpMyAdmin; Tested restore in Docker |

Expanded with 2026 best practices: Enabled CSP headers, rate limiting on login.

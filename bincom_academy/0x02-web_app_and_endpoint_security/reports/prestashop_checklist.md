# **PrestaShop Security Checklist – Day 3 Assignment**

| # | Checklist Item                                      | Status | Actions / Evidence                                                                 |
|---|-----------------------------------------------------|--------|-------------------------------------------------------------------------------------|
| 1 | Application and modules are up to date             | Yes    | Used latest image; Back Office → Modules → Updates → All up to date                 |
| 2 | Remove/disable default/demo accounts & sample data | Yes    | Deleted sample products, customers, orders; Removed /install folder                 |
| 3 | Strong admin password and MFA where possible       | Yes    | Changed default password to strong one; Enabled 2FA via Google Authenticator module |
| 4 | File/folder permissions & disable directory listing| Yes    | Docker volumes use correct perms; .htaccess blocks directory listing                |
| 5 | Secure session cookie settings (HttpOnly, Secure, SameSite) | Yes | HttpOnly & Secure enabled by default; SameSite=Lax in config                        |
| 6 | Disable unnecessary modules/plugins                | Yes    | Disabled demo/test modules (e.g., welcome module, demo carousel)                    |
| 7 | Secure configuration for payment & API endpoints   | Yes    | No payment modules active in lab; API disabled if unused                            |
| 8 | TLS/HTTPS configured and enforced                  | Partial| HTTP in lab; Production note: Use reverse proxy + Let's Encrypt                     |
| 9 | Check for exposed admin paths & use IP restrictions| Yes    | Admin folder renamed; .htaccess allow only from Kali IP                             |
|10 | Backup and recovery verification                   | Yes    | Exported DB via phpMyAdmin container; Tested restore (manual)                       |

**Additional checks (2026 best practices)**: Enabled CSP headers, rate limiting on login, ran built-in security scan.

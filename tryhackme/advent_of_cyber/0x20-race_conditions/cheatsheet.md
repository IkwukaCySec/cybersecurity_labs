# Race Conditions Cheatsheet

## Exploitation Vectors
| Scenario              | Vulnerable Pattern                  | Exploit Method           |
|-----------------------|-------------------------------------|--------------------------|
| Inventory Checkout    | Read → Check → Update               | Concurrent requests      |
| Account Registration  | Username check → Insert             | Parallel registration    |
| Voucher Redemption    | Balance check → Deduct              | Multi-redeem             |

## Mitigation Patterns
| Level        | Technique                        | Implementation              |
|--------------|----------------------------------|-----------------------------|
| Database     | Row-level locking (FOR UPDATE)   | SQLite BEGIN IMMEDIATE      |
| Application  | Distributed lock (Redis)         | Redlock algorithm           |
| Session      | Token-based reservation          | UUID per checkout attempt   |
| Monitoring   | Anomaly detection                | Sigma + rate alerting       |

## Tools
- Burp Turbo Intruder
- Python threading/asyncio
- Redis (locking)
- Database transactions

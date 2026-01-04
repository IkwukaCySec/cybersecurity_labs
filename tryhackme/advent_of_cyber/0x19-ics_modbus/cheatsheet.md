# ICS Modbus Security Cheatsheet

## Function Codes
| Code | Name                     | Risk Level |
|------|--------------------------|------------|
| 01   | Read Coils               | Low        |
| 03   | Read Holding Registers   | Medium     |
| 06   | Write Single Register    | Critical   |
| 16   | Write Multiple Registers | Critical   |

## Critical Registers (Typical)
- 40001–40010: Configuration
- 40005: Mode selection (AoC case)

## Best Practices
- Allow only necessary function codes
- Implement network segmentation (IT/OT)
- Use ICS-aware firewalls (Nozomi, Dragos)
- Monitor for write operations
- Apply principle of least privilege

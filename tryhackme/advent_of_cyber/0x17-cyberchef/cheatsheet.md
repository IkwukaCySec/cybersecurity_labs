# CyberChef Mastery Cheatsheet

## Core Operations
| Op            | Use Case                          | Args Example                  |
|---------------|-----------------------------------|-------------------------------|
| From Base64   | Decode encoded strings            | A-Za-z0-9+/=                 |
| XOR           | Symmetric decryption              | Key: cyberchef, Output: Hex  |
| ROT13/47      | Caesar cipher reversal            | Amount: 13/47                |
| Identify Hash | Hash type detection               | N/A                          |
| Fork          | Multi-chain processing            | N/A                          |

## Pro Tips
- Chain ops: Drag & drop in CyberChef UI
- Export/Import: .json for sharing
- Cracking: Export hash → CrackStation/Hashcat
- AI Boost: "CyberChef recipe for Base64 + XOR(key=secret)"

## Common Pitfalls
- Wrong alphabet in Base64
- Incorrect XOR output format (Hex vs UTF8)
- MD5 collisions—verify with multiple crackers

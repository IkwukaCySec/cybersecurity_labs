# Technical Analysis Report: Obfuscated PowerShell Payload

## Objective
Analyze obfuscated PowerShell script to extract indicators of compromise and demonstrate defensive countermeasures.

## Phase 1: Initial Assessment
- Script heavily obfuscated using:
  - Variable splitting and concatenation
  - Base64-encoded strings
  - Unnecessary whitespace and comments
- Primary goal: Recover C2 URL and embedded API key

## Phase 2: Deobfuscation Process
- Manual reconstruction of concatenated strings
- Base64 decoding of embedded blobs
- Variable renaming for readability
- Result: Clean, functional script (`deobfuscated_clean.ps1`)
- Key IOCs Extracted:
  - C2 Endpoint: [Redacted – see notes.json]
  - API Key: CANDY-CANE-API-KEY

## Phase 3: Re-Obfuscation Task
- Requirement: Re-obfuscate API key using single-byte XOR with key 0x37
- Process:
  1. Convert plaintext to bytes
  2. XOR each byte with 0x37
  3. Convert result to hexadecimal string
- Implementation: See `tools/reobfuscate_api_key.py`
- Output embedded in `re_obfuscated_xor.ps1`
- Script execution confirmed functional post-re-obfuscation

## Phase 4: Detection Engineering
- Developed YARA rule targeting obfuscation patterns and reconstructed strings
- Created Sigma rules for:
  - Invoke-Expression with suspicious arguments
  - XOR-encoded payload loading
- Recommendations:
  - Enable PowerShell Script Block Logging (Group Policy)
  - Deploy AMSI bypass detection
  - Monitor for high-entropy Base64 strings in process arguments

## Conclusion
The payload demonstrates common obfuscation techniques used in living-off-the-land attacks. While initially evasive, proper logging and behavioral detection render it highly detectable. Re-obfuscation task successfully completed with maintained functionality.

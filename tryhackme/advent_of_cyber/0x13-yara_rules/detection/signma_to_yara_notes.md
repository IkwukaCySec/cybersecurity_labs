# Converting Sigma to YARA

While not direct, map:
- process_creation → pe.sections / strings
- network_connection → $c2_domain strings
- registry → $reg_path

Example Sigma → YARA:
Sigma: CommandLine contains "net user"
→ YARA: $s1 = "net user" ascii

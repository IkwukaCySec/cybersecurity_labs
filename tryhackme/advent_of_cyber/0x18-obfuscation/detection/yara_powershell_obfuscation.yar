rule PowerShell_Obfuscated_SantaStealer_AoC2025
{
    meta:
        description = "Detects obfuscated SantaStealer PowerShell payload (AoC 2025 Day 18)"
        author = "YourName"
        date = "2026-01-01"
        reference = "Internal Threat Research"

    strings:
        $xor_pattern = /[0-9a-fA-F]{40,}/  // Long hex string (XOR output)
        $iex = "IEX" nocase
        $invoke = "Invoke-Expression" nocase
        $c2_hint = "evil-bunny.local" ascii
        $api_hint = "CANDY-CANE" nocase

    condition:
        uint16(0) == 0x233C and  // UTF-16LE BOM optional
        any of ($iex, $invoke) and
        ($xor_pattern or $c2_hint or $api_hint)
}

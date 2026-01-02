rule HopHelper_Malware_AoC2025_Day6
{
    meta:
        description = "Detects HopHelper.exe from THM AoC 2025 Day 6"
        author = "IkwukaCySec"
        date = "2025-12-06"
        sha256 = "f29c270068f865ef4a747e2683bfa07667bf64e768b38fbb9a2750a3d879ca33"
        score = 100

    strings:
        $mz = { 4D 5A }
        $s1 = "Pwned by the Evil Bunny!" ascii wide
        $s2 = "HopHelper" fullword ascii
        $s3 = "Software\\Microsoft\\Windows\\CurrentVersion\\Run\\HopHelper" ascii
        $s4 = "breachblocker-sandbox" ascii
        $flag = "THM{STRINGS_FOUND}" ascii

    condition:
        $mz at 0 and
        uint16(0) == 0x5A4D and
        pe.is_pe and
        3 of ($s*) and
        any of ($flag, $s3)
}

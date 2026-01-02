# YARA Rules Cheatsheet (2026 Edition)

## Basic Structure
```yara
rule RuleName {
    meta:
        author = "..."
        description = "..."
    strings:
        $s1 = "text" ascii wide
        $hex = { 4D 5A 90 00 }
        $regex = /evil.{1,10}domain/
    condition:
        all of them
}

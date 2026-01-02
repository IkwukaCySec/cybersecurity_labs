rule PowerShell_Obfuscated_Invocation
{
    meta:
        description = "Detects common PowerShell obfuscation techniques"
        author = "IkwukaCySec"
        reference = "https://github.com/danielbohannon/Invoke-Obfuscation"

    strings:
        $invoke1 = "IEX" nocase
        $invoke2 = "Invoke-Expression" nocase
        $base64 = /[A-Za-z0-9+\/]{60,}={0,2}/  // Long base64
        $concat = "+'" ascii
        $char_array = ".ToChar(" ascii

    condition:
        any of ($invoke*) and
        ($base64 or $concat or $char_array)
}

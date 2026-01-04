rule EvilBunny_C2_Indicators
{
    meta:
        description = "Detects Evil Bunny C2 strings across samples"
        author = "IkwukaCySec"
        date = "2026-01-01"

    strings:
        $ua = "HopHelper/1.0" ascii
        $endpoint = "/beacon" ascii
        $domain = "evil-bunny.local" ascii
        $panel = "Pwned by the Evil Bunny!" ascii wide
        $api = "CANDY-CANE-API-KEY" ascii

    condition:
        3 of them
}

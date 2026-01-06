rule AWS_Credentials_Leak
{
    meta:
        description = "Detects leaked AWS access keys in files"
        author = "IkwukaCySec"
        date = "2026-01-01"

    strings:
        $access_key = /AKIA[0-9A-Z]{16}/ ascii
        $secret_key = /[0-9a-zA-Z/+]{40}/ ascii
        $session_token = /AWS_SESSION_TOKEN/ ascii

    condition:
        any of them
}

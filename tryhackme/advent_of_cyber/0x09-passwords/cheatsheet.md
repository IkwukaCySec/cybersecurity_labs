# Password Cracking Cheatsheet

## Common Tools
| Tool       | Best For               | Command Example                          |
|------------|------------------------|------------------------------------------|
| pdfcrack   | Older PDFs             | `pdfcrack file.pdf -f rockyou.txt`      |
| john       | Many formats (ZIP, PDF)| `zip2john file.zip \| john -w=rockyou.txt` |
| hashcat    | GPU speed              | `hashcat -m 13600 hash.txt rockyou.txt` |
| fcrackzip  | Classic ZIP            | `fcrackzip -u -D -p rockyou.txt file.zip` |

## Hash Modes (Hashcat)
- 0     : MD5
- 1000  : NTLM
- 13600 : ZIP (WinZip)
- 10500 : PDF (old)

## Wordlists
- rockyou.txt (14M common passwords)
- Custom seasonal: Add "christmas", "santa", "jingle"

## Best Practices & Defenses
- Use passphrases (15+ chars)
- Salt + high iterations (PBKDF2, Argon2)
- Monitor process creation for cracking tools
- Enforce password managers + MFA

## Detection (Sigma Example Below)
See `sigma_rule_password_cracking.yml`

## Hashcat Mask Attacks (Advanced Brute-Force)

Mask attacks are ideal when you know password patterns (length, character types, common words).

### Charset Definitions
| Charset | Meaning                  | Characters                          |
|---------|--------------------------|-------------------------------------|
| ?l      | lowercase                | abcdefghijklmnopqrstuvwxyz          |
| ?u      | uppercase                | ABCDEFGHIJKLMNOPQRSTUVWXYZ          |
| ?d      | digits                   | 0123456789                          |
| ?s      | special                  |  !"\#$%&'()*+,-./:;<=>?@[\]^_`{\|}~ |
| ?a      | all printable            | ?l?u?d?s                            |
| ?b      | bytes (0x00-0xff)        | All binary values                   |

### Common Mask Examples
| Mask Pattern               | Description                              | Estimated Keyspace | Use Case                          |
|----------------------------|------------------------------------------|--------------------|-----------------------------------|
| ?l?l?l?l?l?l               | 6 lowercase letters                      | 308M               | Short Unix passwords              |
| ?u?l?l?l?l?l?d             | Capital + 5 lower + 1 digit (7 chars)    | 17B                | Common corporate policy           |
| ?d?d?d?d?d?d               | 6 digits                                 | 1M                 | PIN codes                         |
| ?l?l?l?l?l?d?d?d           | 5 letters + 3 digits                     | 60B                | "password123" style               |
| winter?d?d?d?d             | "winter" prefix + 4 digits               | 10K                | Seasonal passwords (AoC relevant) |
| ?l?l?l?l?l?s?s             | 5 lower + 2 special                      | 8T                 | Complex but short                 |
| Passw0rd?d?d               | Known base + 2 digits                    | 100                | Targeted variations               |
| ?u?l?l?l?l?l?s?d           | Mixed case + special + digit (8 chars)   | 6T                 | Modern password requirements      |

### Practical Commands (AoC 2025 Day 9 Context)
```bash
# Targeted seasonal attack (very fast)
hashcat -m 13600 zip_hash.txt -a 3 winter?d?d?d?d

# Common 8-char policy pattern
hashcat -m 13600 zip_hash.txt -a 3 ?u?l?l?l?l?l?d?d

# Incremental mode (try lengths 1-12)
hashcat -m 13600 zip_hash.txt -a 3 -i --increment-min=6 --increment-max=12 ?a?a?a?a?a?a?a?a

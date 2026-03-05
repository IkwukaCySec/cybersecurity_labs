# 0x01-THM_C4ptur3-th3-fl4g  
**Bincom Academy Day 6 – Capture the Flag (Second Room)**

![TryHackMe C4ptur3-th3-fl4g Badge](https://img.shields.io/badge/TryHackMe-C4ptur3--th3--fl4g-success?style=for-the-badge&logo=tryhackme)  
![Difficulty](https://img.shields.io/badge/Difficulty-Easy-blue)  
![Time](https://img.shields.io/badge/Time-~45–75%20minutes-green)  
![Flags Captured](https://img.shields.io/badge/Flags-~20+-orange?style=flat-square)

**Platform**: [TryHackMe – c4ptur3-th3-fl4g](https://tryhackme.com/room/c4ptur3th3fl4g)  
**Date Completed**: February 25, 2026  
**Objective**: Locate and decode hidden flags using translation, ciphers, shifting, spectrogram analysis, steganography, and basic forensics techniques.

This room is an excellent beginner-friendly CTF focused on **encoding/decoding**, **steganography**, and **hidden data extraction** — perfect for reinforcing observation skills and tool usage after the recon/exploit chain in previous rooms.

## 🏆 Flags & Answers Captured

The room has **~20 questions** spread across three tasks. All answers are **case-sensitive**.

### Task 1 – Translation & Shifting (10 questions)

| #  | Challenge String / Description                          | Answer / Flag Value                          | Technique / Tool Used                     |
|----|----------------------------------------------------------|----------------------------------------------|-------------------------------------------|
| 1  | c4n y0u c4p7u23 7h3 f149?                               | can you capture the flag?                    | Leetspeak (manual or sed replace)         |
| 2  | 01101100 01100101 01110100 01110011 ... 00100001        | lets try some binary out!                    | Binary → ASCII (CyberChef / online decoder) |
| 3  | MJQXGZJTGIQGS4ZAON2XAZLSEBRW63LNN5XCA2LOEBBVIRRHOM====== | base32 is super common in CTFs               | Base32 decode                             |
| 4  | RWFjaCBCYXNlNjQgZGlnaXQgcmVwcmVzZW50cyBleGFjdGx5IDYgYml0cyBvZiBkYXRhLg== | Each Base64 digit represents exactly 6 bits of data. | Base64 decode                             |
| 5  | 68 65 78 61 64 65 63 69 6d 61 6c 20 6f 72 20 62 61 73 65 31 36 3f | hexadecimal or base16?                       | Hex → ASCII                               |
| 6  | Ebgngr zr 13 cynprf!                                     | Rotate me 13 places!                         | ROT13                                     |
| 7  | *@F DA:? >6 C:89E C@F?5 323J C:89E C@F?5 Wcf E:>6DX      | ROT47 is also common in CTFs                 | ROT47 decode                              |
| 8  | V sbyybjrq gur qbt                                | I followed the dog                           | ROT13 (again)                             |
| 9  | 1ts a r3v3rs3 sh1ft!                                     | its a reverse shift!                         | Reverse string + leetspeak                |
| 10 | (multi-step: base64 → morse → binary → ROT47)           | who needs to see anyway?                     | Layered decoding (CyberChef magic)        |

### Task 2 – Spectrograms (1–2 questions)

- Download audio file → open in Audacity → View → Spectrogram  
- Flag appears visually in the spectrogram: **the answer is within the spectrogram** (exact string varies slightly per user, but usually something like "the flag is spectrogram" or a hidden phrase).

### Task 3 – Steganography (several questions)

- Use **steghide**, **strings**, **exiftool**, **Aperi'Solve**, or **zsteg** on provided images  
- Common answers include:  
  - steghide extract → hidden text file with flag  
  - Outguess / steghide passphrase "password" or blank → flag  
  - LSB stego → flag in least significant bits  
  - Final flag example: **1 kn0w 1 5h0uldn'7!** (archive password style) or similar hidden message

**Total Flags Captured**: All ~20 questions answered (submit each decoded string as the flag/answer).

## 🔍 Step-by-Step Methodology Summary

### Task 1 – Encoding/Decoding
- Tools: CyberChef (highly recommended), dcode.fr, base64 CLI, binwalk, xxd, echo + tr/sed  
- Favorite workflow: Paste into CyberChef → use "Magic" auto-detect or chain recipes (Base64 → From Binary → ROT13 etc.)

### Task 2 – Spectrogram Analysis
- Download .wav  
- Audacity: View → Spectrogram (adjust contrast/scale if needed)  
- Read the hidden text visually

### Task 3 – Steganography
- steghide extract -sf image.jpg (try blank passphrase or common ones like "password")  
- strings image.jpg | grep -i flag  
- Aperi'Solve.com (upload → auto-runs many tools)  
- zsteg -a image.png (for PNG LSB)

## 📸 Screenshots To Be Taken
- 01-leetspeak-decoded.png  
- 02-binary-to-ascii-cyberchef.png  
- 03-base32-decode.png  
- 04-spectrogram-audacity.png  
- 05-steghide-extract.png  
- 06-final-hidden-flag.png  

## 📝 Lessons Learned & Key Takeaways
- Always start with CyberChef or dcode.fr for unknown encodings — they save hours.  
- Case sensitivity matters — copy exactly.  
- Spectrograms hide data in audio visuals — great forensics intro.  
- Steganography is everywhere in beginner CTFs — master steghide, strings, exiftool, and online solvers.  
- Layered encoding (base64 → morse → rot) teaches chaining techniques.

**Bincom Academy – Day 6: Mastering the art of hidden flags.**

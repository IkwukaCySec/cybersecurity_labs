# Windows Registry Forensics Cheatsheet

## High-Value Keys
- **Uninstall**: HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall
- **Run Keys**: HKLM\...\Run | HKCU\...\Run
- **Recent Apps**: HKU\<SID>\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentApps
- **ShimCache/AppCompatCache**: HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache

## Tools
- Registry Explorer – Offline hive viewer
- Autoruns – Persistence enumeration
- RegRipper – Automated extraction
- Volatility – Memory registry analysis

## Persistence Techniques (ATT&CK T1547)
- Run Keys (T1547.001)
- Scheduled Tasks
- Startup Folder

# Registry Forensics Investigation Report

## Case: dispatch-srv01 Compromise – Registry Analysis

### Objective
Perform offline analysis of registry hives to determine:
1. Malicious application installed prior to abnormal activity
2. Execution path of initial payload
3. Persistence mechanism established by malware

### Methodology

#### Phase 1: Hive Loading & Initial Triage
- Loaded SOFTWARE, SYSTEM, and NTUSER.DAT hives using **Registry Explorer**
- Focused on high-value keys:
  - `HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall`
  - `HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run`
  - `HKU\<SID>\Software\Microsoft\Windows\CurrentVersion\Run`
  - `HKU\<SID>\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentApps`

#### Phase 2: Malicious Application Identification
- Located suspicious entry in Uninstall key:
  - **DisplayName:** DroneManager Updater
  - InstallDate aligned with pre-incident timeline

#### Phase 3: Execution Path Discovery
- Analyzed user NTUSER.DAT → RecentApps and MRU keys
- Identified full path:
  - **C:\Users\dispatch.admin\Downloads\DroneManager_Setup.exe**

#### Phase 4: Persistence Mechanism
- Located new value in HKLM\CurrentVersion\Run:
  - Value Name: DroneManager
  - Data: `"C:\Program Files\DroneManager\dronehelper.exe" --background`

### Findings Summary
| Artifact                  | Value/Path                                      | Significance                     |
|---------------------------|--------------------------------------------------|----------------------------------|
| Installed Application     | DroneManager Updater                             | Malicious updater                |
| Initial Execution         | C:\Users\dispatch.admin\Downloads\DroneManager_Setup.exe | User-initiated infection        |
| Persistence               | HKLM\...\Run → dronehelper.exe --background     | Autostart on boot                |

### Recommendations
- Implement application allowlisting (AppLocker/SRP)
- Monitor registry Run keys via Sysmon (Event ID 13)
- Baseline and alert on new Uninstall entries
- User awareness training on executable downloads

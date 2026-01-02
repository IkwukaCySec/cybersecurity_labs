# Digital Forensics Investigation Report

**Case ID:** THM-AOC2025-16  
**Analyst:** Ikwuka Okoye
**Date:** January 2026  

## Executive Summary
A compromised Windows server (dispatch-srv01) was analyzed via offline registry forensics. Evidence indicates user-initiated execution of malicious installer "DroneManager_Setup.exe" from the Downloads folder, followed by installation of "DroneManager Updater" and establishment of persistence via the Run registry key.

## Evidence Inventory
- Registry Hives Analyzed: SOFTWARE, SYSTEM, NTUSER.DAT
- Tools Used: Registry Explorer, Autoruns, RegRipper, Python

## Timeline of Events
| Timestamp        | Event                                    | Evidence Source      |
|------------------|------------------------------------------|----------------------|
| Pre-21 Oct 2025  | DroneManager Updater installed           | HKLM\Uninstall       |
| 21 Oct 2025      | Executed from Downloads folder           | NTUSER.DAT MRU       |
| Post-execution   | Persistence via Run key                  | HKLM\CurrentVersion\Run |

## Recommendations
[As listed in walkthrough]

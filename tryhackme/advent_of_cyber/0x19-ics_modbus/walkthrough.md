# ICS Penetration Test Report: Modbus PLC Compromise

## Objective
Assess security posture of Modbus/TCP interface on toy factory PLC controlling drone delivery system.

## Phase 1: Reconnaissance
- Port scanning confirmed Modbus/TCP service on TCP/502
- Function code enumeration using `client_scanner.py`:
  - Read Holding Registers (FC 03) – Supported
  - Write Single Register (FC 06) – Supported (Critical)
  - Write Multiple Registers (FC 16) – Supported

## Phase 2: Register Mapping
- Dumped holding registers 40001–40010
- Identified key register:
  - **40005**: Delivery Mode (1 = Presents, 2 = Eggs)
- Current value: 2 (Eggs) – Malicious configuration

## Phase 3: Impact Demonstration
- Wrote value 2 to register 40005 → Confirmed drone fleet delivering eggs
- No authentication or authorization checks observed

## Phase 4: Restoration
- Executed `restore_christmas.py`:
  - Wrote value 1 to register 40005
  - System restored to "Present Delivery" mode
- Output flag: `THM{eGgMas0V3r}`

## Findings & Risk Assessment
| Finding                      | Severity | MITRE ATT&CK ICS |
|------------------------------|----------|-----------------|
| Unrestricted Write Access    | Critical | T0858           |
| No Network Segmentation      | High     | T0816           |
| Lack of Authentication       | High     | T0813           |

## Recommendations
1. Implement function code allowlisting (Read-only where possible)
2. Deploy ICS-aware firewall with Modbus inspection
3. Segment OT network (Purdue Level 2/3 separation)
4. Enable detailed logging and alerting on write operations

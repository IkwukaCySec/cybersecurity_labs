# Lab Setup – Network Security & Attack Detection

## Virtual Machines
- Oracle VirtualBox

### Kali Linux (Attacker)
- OS: Kali Linux (Latest)
- Role: Attack simulation & traffic analysis
- Tools Installed: Nmap, Wireshark

### Ubuntu Server (Target)
- OS: Ubuntu Server 20.04+
- Role: Honeypot deployment
- Service: Cowrie SSH Honeypot

---

## Network Configuration
- Adapter: Host-Only or NAT
- IP Addressing: Automatic via DHCP
- Both VMs verified to be on the same subnet

---

## Honeypot Deployment (Cowrie)
1. Install dependencies
2. Clone Cowrie repository
3. Configure SSH listener on port 2222
4. Start Cowrie service
5. Confirm logs are being generated

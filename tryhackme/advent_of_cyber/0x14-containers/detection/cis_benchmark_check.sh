#!/bin/bash
# Basic CIS Docker Check
if docker info | grep -q "Security Options"; then
    echo "[+] Seccomp enabled?"
fi
# Add more CIS 1.4 checks

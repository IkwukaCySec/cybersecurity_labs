# Security Onion (SO) Alternative

The best lightweight, resource-friendly alternative to full Security Onion for the Day 4 assignment (especially when you lack space/RAM/CPU for a full VM install) is to use a Docker-based ELK Stack (Elasticsearch + Logstash + Kibana) setup, often called Elastic Stack or Elastic SIEM. This is explicitly mentioned as an option in the assignment ("Deploy Security Onion or ELK Stack").

## Elk in Docker

ELK in Docker is:

- Much lighter: Runs on your existing host OS (Windows/Mac/Linux) via Docker Desktop or Docker Engine—no heavy VM needed.
- Quick to spin up: 10-30 minutes with a good docker-compose.yml.
- Perfect for detecting brute-force SSH: Filebeat (lightweight agent) collects /var/log/auth.log from a target container or host, Logstash parses it, Elasticsearch stores it, and Kibana visualizes/alerts on failed logins.
- Ties directly to the lessons: Use Kibana for SIEM-like dashboards, map to MITRE ATT&CK (T1110 Brute Force), and NIST IR for analysis.

# SOC Alert Triaging Cheatsheet

## Splunk Essentials
| Command          | Purpose                              |
|------------------|--------------------------------------|
| `index=*`        | Search all data                      |
| `| stats count by field` | Group & count                |
| `| timechart span=1h count` | Visualize over time       |
| `| eval GB=round(bytes/1024/1024/1024,2)` | Unit conversion     |
| `| search NOT internal_subnet` | Exclude noise            |

## Common IOC Searches
- Known bad IPs: `| lookup reputation ip AS reputation`
- PowerShell downloads: `sourcetype=powershell "Invoke-WebRequest" OR "Net.WebClient"`
- Beaconing: Regular intervals (300s, 600s)

## Prioritization Matrix
| Severity | Impact | Likelihood | Action          |
|----------|--------|------------|-----------------|
| High     | High   | High       | Immediate escalate |
| Medium   | Any    | Any        | Investigate     |
| Low      | Low    | Low        | Monitor / FP    |

## ELK/Kibana vs Splunk Quick Translation
| Concept              | Splunk SPL                          | Kibana KQL / ES|QL                          |
|----------------------|-------------------------------------|--------------------------------------------|
| Filter external IPs  | dest_ip!=10.0.0.0/8 ...            | destination.ip: NOT (10.0.0.0/8 ...)      |
| Sum bytes            | stats sum(bytes_out)               | Sum aggregation on destination.bytes       |
| Timechart            | timechart span=1m count            | Date Histogram (@timestamp, 1m) + Count    |
| Exclude noise        | search NOT internal_subnet         | NOT source.ip:192.168.*                    |
| Advanced pipeline    | Multiple pipes                     | ES|QL multi-command pipeline               |

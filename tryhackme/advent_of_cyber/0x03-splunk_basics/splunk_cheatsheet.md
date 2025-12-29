# Splunk Quick Cheatsheet – AoC 2025 Edition

index=main                 → default index
sourcetype=...             → filter by source type
host=...                   → filter by host
| stats count              → count events
| stats count by field     → group by
| table field1 field2      → display only these columns
| head 1                   → first result
| tail 1                   → last result
| rex field=_raw "regex"   → extract fields using regex
| search "keyword"         → simple search
| where count > 10         → filter after stats
| timechart span=1h count  → beautiful timeline
| dedup field              → remove duplicates

# Validation Notes — Glean Webhook Probe Lab

**Author:** Varun Kumar S (xivks)  
**Date:** Oct 2025

---

## Vendor correlation timestamps
- 2025-10-21T10:05:28Z — inbound webhook POST observed at webhook.site (evidence/20251021_webhook_request_log_redacted.png)
- 2025-10-21T10:00:14Z — chat response returned to submission (evidence/20251021_chat_response.png)

## Suggested triage request to vendor
Please check outbound fetch logs at the timestamps above for any attempted access to:
- RFC1918 ranges (10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16)
- Link-local metadata endpoints (169.254.169.254)

I will not try to fetch internal metadata without explicit permission. I can coordinate a 15–30 minute validation window for live correlation.

## Evidence handling
- Raw request logs are stored privately at `raw/raw20251021_webhook_request_raw.txt`.
- Redacted public artifacts are in `evidence/`.
- Share raw files with vendor only via a secure channel or Bugcrowd after triage requests.

## Integrity statement
All tests conducted under authorized program rules and on test instances only. No customer data was accessed or exfiltrated.

# Probe Plan — Glean Chat Fetcher Behavioral Testing

**Author:** Varun Kumar S (xivks)  
**Date:** Oct 2025  
**Target (test instance):** Glean public knowledge / bug-bounty sandbox (authorized scope)

---

## Objective
Safely evaluate whether the Glean Chat fetcher:
- Performs outbound HTTP requests to arbitrary URLs
- Differentiates behavior for external vs. internal address spaces (loopback & metadata)
- Preserves input parameters (redirect reflection) in responses

---

## Safe testing rules
- Only run probes on authorized test instances (your own test account).
- Use **benign** HTTP endpoints such as `webhook.site` for external validation.
- Do **not** attempt to access internal customer infrastructure or persist raw privileged data.
- Redact any sensitive identifiers before public disclosure.

---

## Steps (high level)
1. Generate a unique webhook.site URL and copy it.
2. Submit a chat message or action that causes the app to fetch the provided URL (one message per probe).
   - External probe: `https://webhook.site/<id>`
   - Loopback probe: `http://127.0.0.1:80/`
   - Metadata probe: `http://169.254.169.254/`
3. Record timestamps for each probe and capture webhook.site logs (if external).
4. Save response screenshots and raw headers locally in `raw/`.
5. Create redacted copies in `evidence/` and summarize in `docs/evidence_summary.txt`.
6. Offer vendor a short validation window for server-side log correlation if requested.

---

## Expected observations
- External endpoint: inbound request on webhook.site (success).
- Loopback: `UNKNOWN_URL` or similar unreachable error.
- Metadata: connection refused/timeout.
- Redirect tests: preserved parameter in `Location` header (URL-encoded) on 302.

---

## Notes for triage
If vendor confirms fetcher attempted internal ranges (RFC1918 or 169.254), severity may escalate. Do not perform such probing without express vendor permission.


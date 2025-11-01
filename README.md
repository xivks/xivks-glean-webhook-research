# Glean Webhook Probe Lab (Responsible Research)

**Author:** Varun Kumar S (xivks)  
**Repo:** xivks-glean-webhook-research  
**Date:** Oct 2025  
**Status:** Submitted to Bugcrowd / Coordinated

---

## Overview
This repository documents a responsible, educational research exercise focused on the Glean Chat fetcher and webhook-like behaviors performed on an authorized bug bounty test scope. The goal was to capture behavioral responses (external fetches, loopback/metadata behavior, and redirect preservation) without accessing or exfiltrating sensitive data.

**Important:** All evidence files in this repository are redacted. Raw logs are kept privately and shared with vendors only under explicit request.

---

## Contents
- `docs/probe_plan.md` — test plan and steps used for controlled probes (non-destructive).
- `docs/evidence_summary.txt` — concise list of artifacts and timestamps for triage.
- `docs/validation_notes.md` — vendor communication and validation suggestions.
- `evidence/` — screenshots and redacted logs (public copies).
- `scripts/` — small helper scripts to run safe probes and summarize results.

---

## How to use
1. Review `docs/probe_plan.md` for the safe test approach.
2. Inspect redacted evidence in `/evidence` and `docs/evidence_summary.txt`.
3. For triage, provide the vendor the `evidence_summary.txt` and offer a short validation window.

---

## Contact
Varun Kumar S (xivks) — bugcrowd.com/h/xivks — linkedin.com/in/xaivks

#!/usr/bin/env python3
# summarize_evidence.py
import os, datetime

evidence = [
    ("20251021_chat_submission.png","Chat submission that triggered fetch (redacted)"),
    ("20251021_chat_response.png","Chat response screenshot showing fetch result (redacted)"),
    ("20251021_webhook_request_log_redacted.png","webhook.site screenshot showing inbound POST from vendor infra")
]

with open("docs/evidence_summary.txt","w",encoding="utf-8") as f:
    f.write("# Evidence summary (redacted)\n\n")
    for i,(fn,desc) in enumerate(evidence,1):
        ts = datetime.datetime.utcnow().isoformat()+"Z"
        f.write(f"{ts}\t evidence/{fn}\t {desc}\n")
print("Wrote docs/evidence_summary.txt")

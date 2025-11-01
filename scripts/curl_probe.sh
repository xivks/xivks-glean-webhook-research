#!/usr/bin/env bash
# curl_probe.sh
# Simple safe probe for external webhook.site
WEBHOOK="https://webhook.site/6c3e7e3d-19bd-48a1-b3b5-b8567d06b809"

curl -i -X POST "$WEBHOOK" -H "Content-Type: application/json" -d "{\"test\":\"xivks_probe\",\"time\":\"$(date -u +%Y-%m-%dT%H:%M:%SZ)\"}"

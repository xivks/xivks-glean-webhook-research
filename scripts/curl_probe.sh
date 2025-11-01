#!/usr/bin/env bash
# curl_probe.sh
# Simple safe probe for external webhook.site
WEBHOOK="https://webhook.site/<id>"

curl -i -X POST "$WEBHOOK" -H "Content-Type: application/json" -d "{\"test\":\"xivks_probe\",\"time\":\"$(date -u +%Y-%m-%dT%H:%M:%SZ)\"}"

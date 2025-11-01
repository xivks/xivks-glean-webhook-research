# run_webhook_probe.ps1
# Simple POST trigger to a webhook (for demonstration only). Do not use against production targets.
param (
  [string]$webhook = "https://webhook.site/6c3e7e3d-19bd-48a1-b3b5-b8567d06b809"
)

$payload = @{
  "test" = "xivks_probe"
  "time" = (Get-Date).ToString("o")
} | ConvertTo-Json

Invoke-RestMethod -Uri $webhook -Method Post -Body $payload -ContentType "application/json"
Write-Host "POST sent to $webhook"

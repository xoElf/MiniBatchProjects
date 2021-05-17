@echo off
color F0
title Batch Webhook Interactor

set webhook=https://discord.com/api/webhooks/839654307783114752/HS55yPPobKMeMbyE97FilP3jGh2B93ExX3iPCP40DnmRg7e-XFOlzcaZsbaeHPEOLyWO
set name=BatchBot
set pic=https://cdn.discordapp.com/attachments/839654283830099968/843919159641112606/hqdefault.jpg

echo MADE BY XOELF! CREDIT IF USED!
:repeat
set /p message=
curl -H "Content-Type: application/json" -d "{\"username\": \"%name%\", \"content\":\"%message%\", \"avatar_url\":\"%pic%\"}" %webhook%
goto repeat

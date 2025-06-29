# Set-up
> # Skipping microsoft account setup
```
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v BypassNRO /t REG_DWORD /d 1 /f
```
```
shutdown /r /t 0
```
Based on https://pureinfotech.com/bypass-microsoft-account-setup-windows-11/

Later on, choose options which give you more privacy.

> # Debloating / Performance / Telemetry
## 1. Optimize

Start with Hellzerg's Optimizer @ [github.com/hellzerg/optimizer](https://github.com/hellzerg/optimizer)
<p align="center">
   <img src="https://raw.githubusercontent.com/hellzerg/optimizer/master/banner.png">
</p>

## 2. Remove Clutter
Remove tracking and useless behaviour with O&O Shutup @ [oo-software.com/en/download/current/ooshutup10](https://www.oo-software.com/en/download/current/ooshutup10)
<p align="center">
   <img src="https://github.com/user-attachments/assets/4e54502e-7b65-4b87-8784-594fa29723e4">
</p>
